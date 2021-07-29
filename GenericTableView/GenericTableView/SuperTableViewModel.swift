//
//  SuperTableViewModel.swift
//  GenericTableView
//
//  Created by Nitesh Kumar Pal on 02/08/21.
//

import Foundation
import SwiftUI

enum ViewType: Equatable {
    case xib
    case swiftUI(id: String)
}

protocol SuperTableViewCellViewModelProtocol {
    ///This nibName must be accurate, It will be used to register tableCell identifier
    var nibName: String { get }
    var identifier: String { get }
    var viewType: ViewType { get }
}

protocol SuperTableViewModelProtocol {
    var cells: [SuperTableViewCellViewModelProtocol] { get }
}
