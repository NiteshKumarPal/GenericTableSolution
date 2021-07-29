//
//  SuperTableViewCellView.swift
//  GenericTableView
//
//  Created by Nitesh Kumar Pal on 24/09/21.
//

import UIKit

protocol SuperTableViewCellView: UIView {
    var viewModel: SuperTableViewCellViewModelProtocol? { get set }
    func updateUI()
}
