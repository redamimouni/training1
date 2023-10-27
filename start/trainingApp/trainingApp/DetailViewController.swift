//
//  DetailViewController.swift
//  trainingApp
//
//  Created by reda.mimouni.ext on 27/10/2023.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var tableView: UITableView?
    private let array = [
        "SuperMan",
        "Batman",
        "Ironman",
        "Joker"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView?.dataSource = self
    }
}

extension DetailViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let obj = self.array[indexPath.row]
        cell.textLabel?.text = obj
        return cell
    }
    

}


