//
//  CustomTableCellTwo.swift
//  GenericTableView
//
//  Created by Nitesh Kumar Pal on 29/07/21.
//

import UIKit

class CustomTableCellTwo: UIView, SuperTableViewCellView {

    var viewModel: SuperTableViewCellViewModelProtocol?
    
    func updateUI() {
        guard let viewModel = viewModel as? CustomTableCellViewModel else {
            return
        }
        self.backgroundColor = UIColor(hex: viewModel.colorHax)
    }
}
