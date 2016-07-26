//
//  ViewController.swift
//  CollegeBuilderApp
//
//  Created by Samone on 7/25/16.
//  Copyright © 2016 Simon Stephanos. All rights reserved.
//

import UIKit

class ViewController: UIViewController,  UITableViewDataSource, UITableViewDelegate  {

    @IBOutlet weak var tableView: UITableView!
    var colleges = ["Stanford", "Northwestern", "UofC"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

