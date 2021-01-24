//
//  ViewController.swift
//  DiffableDataSource-Start
//
//  Created by Quentin Genevois.
//

import UIKit

class ViewController: UIViewController {
    // TODO: Create Section and Row enumeration

    // MARK: - Properties

    private let montains = mountainsRawData

    @IBOutlet weak var tableView: UITableView!

    // MARK: - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()

        // TODO: Create DataSource
        // TODO: Update tableview row
    }

    // MARK: - Private Methods

    private func setupView() {
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false

        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false

        tableView.tableFooterView = UIView()
    }
}

extension ViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        let searchQuery = searchController.searchBar.text
        // TODO: Update tableview row
    }
}
