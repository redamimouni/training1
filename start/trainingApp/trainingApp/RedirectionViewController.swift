//
//  RedirectionViewController.swift
//  trainingApp
//
//  Created by Reda Mimouni on 02/02/2022.
//

import UIKit

class RedirectionViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {

    let presenter = MarvelPresenter()
    var marvelList: [Marvel] = []

    @IBOutlet var tableView: UITableView?
    @IBOutlet var loader: UIActivityIndicatorView?

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.getMarvel(completionHandler: { result in
            switch result {
            case .success(let response):
                self.marvelList = response
                DispatchQueue.main.async {
                    self.loader?.stopAnimating()
                    self.tableView?.reloadData()
                }
            case .failure(_):
                break
                // error case
            }
        })
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        let marvel = marvelList[indexPath.row]
        cell.textLabel?.text = marvel.name
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return marvelList.count
    }
}
