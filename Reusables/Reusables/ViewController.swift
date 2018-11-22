//
//  ViewController.swift
//  Reusables
//
//  Created by Pulse on 19/10/18.
//  Copyright © 2018 GS. All rights reserved.
//

import UIKit

class ViewController: GenericTableViewController<StudentModel, ListTableViewCell> {
    
    @IBOutlet weak var tableView:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = [StudentModel(), StudentModel()]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

