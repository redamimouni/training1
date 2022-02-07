//
//  RedirectionViewController.swift
//  trainingApp
//
//  Created by Reda Mimouni on 02/02/2022.
//

import UIKit

class RedirectionViewController : UIViewController {

    private lazy var service: MarvelService = {
        let object = MarvelService()
        return object
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        service.getCharacters { result in
            switch result {
            case .success(let entity):
                entity.data?.results?.forEach { object in
                    print(object.name)
                }
            default: break

            }
        }
    }
}
