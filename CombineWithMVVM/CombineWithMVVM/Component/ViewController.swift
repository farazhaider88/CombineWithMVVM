//
//  ViewController.swift
//  CombineWithMVVM
//
//  Created by Faraz Haider on 17/01/2021.
//

import UIKit
import Combine

class MoviesTableViewDiffableDataSource: UITableViewDiffableDataSource<String?, Result> {}

class ViewController: UIViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
    }


}


extension ViewController
{
    func registerCell()
    {
        let movieCell = UINib(nibName: MovieCell.reuseIdentifier, bundle: nil)
        tableView.register(movieCell, forCellReuseIdentifier: MovieCell.reuseIdentifier)
    }
}
