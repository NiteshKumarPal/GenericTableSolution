//
//  CustomTableCellOne.swift
//  GenericTableView
//
//  Created by Nitesh Kumar Pal on 29/07/21.
//

import UIKit

class CustomTableCellOne: UIView, SuperTableViewCellView {
    var viewModel: SuperTableViewCellViewModelProtocol?
    func updateUI() {
        guard let viewModel = viewModel as? CustomTableCellViewModel else {
            return
        }
        self.backgroundColor = UIColor(hex: viewModel.colorHax)
    }
}

