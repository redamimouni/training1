//
//  ViewController.swift
//  trainingApp
//
//  Created by Reda Mimouni on 09/01/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label1: UILabel?
    @IBOutlet var imageView: UIImageView?

    override func viewDidLoad() {
        super.viewDidLoad()
        label1?.text = "Bonjour !!"
        label1?.textColor = .green
        imageView?.image = UIImage(named: "banane")
        // Do any additional setup after loading the view.
    }

    @IBAction func loginPressed() {
        performSegue(withIdentifier: "redirection", sender: nil)
    }
}

