//
//  TableViewController.swift
//  GenericTableView
//
//  Created by Nitesh Kumar Pal on 29/07/21.
//

import UIKit
import SwiftUI

class SuperTableViewController: UITableViewController {
    
    var tableViewModel: SuperTableViewModelProtocol
    
    init(tableViewModel: SuperTableViewModelProtocol) {
        self.tableViewModel = tableViewModel
        super.init(style: .plain)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        registerNibs()
        
        tableView.reloadData()
        tableView.estimatedRowHeight = 1000
        tableView.rowHeight =  UITableView.automaticDimension
        tableView.tableFooterView = UIView()
        
        self.navigationController?.hidesBarsOnSwipe = true
    }
    
    func registerNibs() {
        for cell in tableViewModel.cells where cell.viewType == .xib {
            tableView.register(SuperTableViewCell.self, forCellReuseIdentifier: cell.nibName)
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewModel.cells.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var finalCell: UITableViewCell?
        
        let cellViewModel = tableViewModel.cells[indexPath.row]
        
        switch cellViewModel.viewType {
        case .xib:
            let view = UINib(nibName: cellViewModel.nibName, bundle: Bundle.main).instantiate(withOwner: self)[0] as? SuperTableViewCellView
            view?.translatesAutoresizingMaskIntoConstraints = false
            view?.viewModel = cellViewModel
            view?.updateUI()
            if let view = view {
                let cell = tableView.dequeueReusableCell(withIdentifier: cellViewModel.nibName, for: indexPath)
                cell.contentView.addSubview(view)
                NSLayoutConstraint.activate(view.constraintsForAnchoringTo(boundsOf: cell.contentView))
                finalCell = cell
            }
            
        case .swiftUI(let id):
            let cell = SwiftUICellLocator.swiftUICell(fromIdentifier: id,
                                                      tableView: tableView,
                                                      parent: self,
                                                      cellIdentifier: cellViewModel.identifier)
            
            finalCell = cell
        }
        
        return finalCell ?? UITableViewCell()
    }
    
    func classType<T>(className: String) -> T.Type {
        let type = NSClassFromString(className) as! T.Type
        return type
    }
}

