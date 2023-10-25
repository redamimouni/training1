//
//  ViewController.swift
//  trainingApp
//
//  Created by Reda Mimouni on 09/01/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField?
    @IBOutlet var passwordTextField: UITextField?

    private let viewModel = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onClick() {
        let result = self.viewModel.onClick(
            userName: userNameTextField?.text,
            password: passwordTextField?.text
        )
        if result {
            let alertSuccess = UIAlertController(title: "Felicitation", message: "Vous êtes bien connecté John", preferredStyle: .alert)
            let action = UIAlertAction(title: "Ok", style: .default)
            alertSuccess.addAction(action)
            self.present(alertSuccess, animated: true)
        } else {
            let alertFailure = UIAlertController(title: "Erreur", message: "Erreur de login/mot de passe", preferredStyle: .actionSheet)
            let action = UIAlertAction(title: "Ok", style: .default)
            alertFailure.addAction(action)
            self.present(alertFailure, animated: true)
        }
    }
}

