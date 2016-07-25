//
//  ViewController.swift
//  TableViewHackwich
//
//  Created by Samone on 7/25/16.
//  Copyright © 2016 Simon Stephanos. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var cities = ["Chicago", "Denver", "Seattle"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
     

    }

}