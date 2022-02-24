//
//  MarvelPresenter.swift
//  trainingApp
//
//  Created by Reda Mimouni on 15/02/2022.
//

import Foundation

class MarvelPresenter {
    func getMarvel(completionHandler: @escaping (Result<[Marvel], Error>) -> Void) {
        let service = MarvelService()
        service.getCharacters { result in
            switch result {
            case .success(let entity):
                let marvels = entity.data?.results?.map({ object in
                    object.toMarvelModel()
                })
                completionHandler(.success(marvels!))
            case .failure(let error):
                completionHandler(.failure(error))
            }
        }
    }
}

extension ResultObject {
    func toMarvelModel() -> Marvel {
        return Marvel(name: name!, description: resultDescription)
    }
}
