//
//  MockBuilder.swift
//  GenericTableView
//
//  Created by Nitesh Kumar Pal on 21/09/21.
//

import Foundation

protocol CustomTableViewBuilder {
    func getTableViewModel() -> SuperTableViewModelProtocol
}

class MockBuilder: CustomTableViewBuilder {
    
    func getTableViewModel() -> SuperTableViewModelProtocol {
        let cell1 = CustomTableCellViewModel(nibName: "CustomTableCellOne", viewType: .xib, colorHax: "#D2B4DE")
        let cell2 = CustomTableCellViewModel(nibName: "CustomTableCellTwo", viewType: .xib, colorHax: "#F9E79F")
        let swiftuiCell = CustomTableCellViewModel(identifier: "CustomTableCellSwiftUI",
                                                 viewType: .swiftUI(id: "CustomeSwiftuiTableCell"))
        
        let tableViewModel = MockSuperTableViewModel(cells: [cell1, cell2, swiftuiCell].compactMap{$0})
        
        return tableViewModel
    }
}
