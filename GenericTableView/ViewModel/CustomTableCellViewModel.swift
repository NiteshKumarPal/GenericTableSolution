//
//  CustomTableCellOneViewModel.swift
//  GenericTableView
//
//  Created by Nitesh Kumar Pal on 21/09/21.
//

import Foundation

protocol CustomTableCellViewModelProtocol: SuperTableViewCellViewModelProtocol {
    var colorHax: String { get }
}

struct CustomTableCellViewModel: CustomTableCellViewModelProtocol {
    
    var nibName: String = ""
    var identifier: String = ""
    var viewType: ViewType
    
    var colorHax: String = ""
    
    init?(nibName: String = "",
         identifier: String = "",
         viewType: ViewType,
         colorHax: String = "") {
        
        guard !nibName.isEmpty || !identifier.isEmpty  else {
            return nil
        }
        
        if !nibName.isEmpty && identifier.isEmpty {
            self.nibName = nibName
            self.identifier =  nibName
        } else if !identifier.isEmpty {
            self.nibName = nibName
            self.identifier =  identifier
        }
        self.viewType = viewType
        self.colorHax = colorHax
    }
}
