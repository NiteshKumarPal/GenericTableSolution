//
//  HomeViewController.swift
//  GenericTableView
//
//  Created by Nitesh Kumar Pal on 22/09/21.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showExample(_ sender: UIButton) {
        //in case of multiple builders for different screens, you can create Builder locator here.
        //for quick example I am calling mockBuilder directly here.
        let vc = SuperTableViewController(tableViewModel: MockBuilder().getTableViewModel())
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
