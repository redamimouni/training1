//
//  MarvelService.swift
//  trainingApp
//
//  Created by Reda Mimouni on 07/02/2022.
//

import Foundation

class MarvelService {

    private lazy var request: URLRequest = {
            let url = URL(string: "https://gateway.marvel.com:443/v1/public/characters?ts=10000&apikey=9324990817df03907a237fc52958e4f1&hash=a53826a71981b7eb2bde14709476d4f1")
            var request = URLRequest(url: url!)
            request.httpMethod = "GET"
            return request
        }()

    func getCharacters(completionHandler: @escaping (Result<MarvelCharacterEntity, Error>) -> Void) {
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                completionHandler(.failure(error))
            }
            if let response = response as? HTTPURLResponse {
                print("HTTP Status code: \(response.statusCode)")
            }
            if let data = data {
                do {
                    let jsonFromData = try JSONDecoder().decode(MarvelCharacterEntity.self, from: data)
                    completionHandler(.success(jsonFromData))
                }
                catch {
                    print(error)
                    completionHandler(.failure(error))
                }
            }
        }
        task.resume()
    }
}
