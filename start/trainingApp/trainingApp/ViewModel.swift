//
//  ViewModel.swift
//  trainingApp
//
//  Created by reda.mimouni.ext on 25/10/2023.
//

import Foundation

class ViewModel {
    func onClick(
        userName: String?,
        password: String?
    ) -> Bool {
        if userName == "JOHN DOE",
           password == "OMNES" {
            return true
        } else {
            return false
        }
    }
}
