//
//  ViewController.swift
//  TableViewHackwich
//
//  Created by Samone on 7/25/16.
//  Copyright © 2016 Simon Stephanos. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var editButton: UIBarButtonItem!
    @IBOutlet weak var tableView: UITableView!
    var cities : [City] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editButton.tag = 0
        cities.append(City(name: "Chicago", state: "Illinois", population: 2700000, image: UIImage(named: "chicagoFlag")!))
        cities.append(City(name: "Denver", state: "Colorado", population: 650000, image: UIImage(named: "denverFlag")!))
        cities.append(City(name: "Seattle", state: "Washington", population: 0, image: UIImage(named: "washingtonFlag")!))
        
        }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return cities.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MyCell", forIndexPath: indexPath)
        cell.textLabel?.text = cities[indexPath.row].name
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
        self.cities.append(City(name: cityTextField.text!))
        self.tableView.reloadData()
        
    }
    
    alert.addAction(addAction)
    self.presentViewController(alert, animated: true, completion: nil)
    }
    
    func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }

    func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {
        let city = cities[sourceIndexPath.row]
        cities.insert(city, atIndex: destinationIndexPath.row)
    }

    @IBAction func onTappedEditButton(sender: UIBarButtonItem) {
        if sender.tag == 0 {
            tableView.editing = true
            sender.tag = 1
        }
        else {
            tableView.editing = false
            sender.tag = 0
        }
    }



}
