//
//  DetailViewController.swift
//  trainingApp
//
//  Created by reda.mimouni.ext on 15/11/2023.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var tableView: UITableView?

    private let detailViewModel = DetailViewModel()

    private lazy var array: [Marvel] = {
        return self.detailViewModel.getMarvels()
    }()

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
        let element = array[indexPath.row]
        cell.textLabel?.text = element.name
        return cell
    }
}
