//
//  GenericTableViewController.swift
//  Reusables
//
//  Created by Pulse on 19/10/18.
//  Copyright © 2018 GS. All rights reserved.
//

import UIKit


class GenericTableViewController<T:Codable, U:BaseTableViewCell<T>>: UIViewController, UITableViewDataSource {
    
    var dataSource:[T]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: U.reuseIdentifier, for: indexPath) as? U {
            cell.model = dataSource?[indexPath.row]
            return cell
        }
       return UITableViewCell()
    }
}


extension UITableView {
    
    func showNoContentView() {
        
    }
    
    func hideNoContentView() {
        
    }
    
}
