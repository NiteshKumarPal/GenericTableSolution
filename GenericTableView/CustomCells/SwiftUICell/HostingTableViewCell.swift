//
//  HostingTableViewCell.swift
//  GenericTableView
//
//  Created by Nitesh Kumar Pal on 22/09/21.
//

import Foundation
import SwiftUI

class HostingTableViewCell<Content: View>: UITableViewCell {
    
    private weak var controller: UIHostingController<Content>?
    
    func host(_ view: Content, parent: UIViewController) {
        let swiftUICellViewController = UIHostingController(rootView: view)
        controller = swiftUICellViewController
        swiftUICellViewController.view.backgroundColor = .clear
        layoutIfNeeded()
        parent.addChild(swiftUICellViewController)
        contentView.addSubview(swiftUICellViewController.view)
        swiftUICellViewController.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(
            contentView.constraintsForAnchoringTo(boundsOf: swiftUICellViewController.view))
        
        swiftUICellViewController.didMove(toParent: parent)
        swiftUICellViewController.view.layoutIfNeeded()
    }
}
