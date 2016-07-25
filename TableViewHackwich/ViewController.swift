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
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return cities.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MyCell", forIndexPath: indexPath)
        cell.textLabel?.text = cities[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            cities.removeAtIndex(indexPath.row)
            tableView.reloadData()
        }
    }
    
    @IBAction func onTappedPlusButton(sender: UIBarButtonItem){
        let alert = UIAlertController(title: "Add City", message: nil, preferredStyle: .Alert)
        alert.addTextFieldWithConfigurationHandler { (textField) in
            textField.placeholder = "Add City Here"
        }
    
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
        alert.addAction(cancelAction)
        
        let addAction = UIAlertAction(title: "Add", style: .Default) { (action) in let cityTextField = alert.textFields![0] as UITextField
        self.cities.append(cityTextField.text!)
        self.tableView.reloadData()
        
    }
    
    alert.addAction(addAction)
    self.presentViewController(alert, animated: true, completion: nil)
    }
}