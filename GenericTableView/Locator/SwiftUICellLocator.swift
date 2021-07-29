//
//  SwiftUICellLocator.swift
//  GenericTableView
//
//  Created by Nitesh Kumar Pal on 21/09/21.
//

import UIKit
import SwiftUI

class SwiftUICellLocator {
    static func swiftUICell(fromIdentifier viewId: String,
                     tableView: UITableView,
                     parent: UIViewController,
                     cellIdentifier: String) -> UITableViewCell? {
        switch viewId {
        case "CustomeSwiftuiTableCell":
            tableView.register(HostingTableViewCell<CustomeSwiftuiTableCell>.self,
                               forCellReuseIdentifier: cellIdentifier)
            let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as! HostingTableViewCell<CustomeSwiftuiTableCell>
            cell.host(CustomeSwiftuiTableCell(), parent: parent)
            return cell
        default:
            return nil
        }
    }
}
