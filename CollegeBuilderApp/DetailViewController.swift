//
//  DetailViewController.swift
//  CollegeBuilderApp
//
//  Created by Samone on 7/25/16.
//  Copyright © 2016 Simon Stephanos. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController{
    
    @IBOutlet weak var collegeTextField: UITextField!
   @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var enrollmentTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var urlStringTextField: UITextField!
    var college : College!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collegeTextField.text = college.name
        locationTextField.text = college.location
        enrollmentTextField.text = String(college.enrollment)
       urlStringTextField.text = college.urlString
        imageView.image = college.image
        
        
    }
    
    @IBAction func onTappedSaveButton(sender: UIButton) {
        college.name = collegeTextField.text!
        college.location = locationTextField.text!
        college.enrollment = Int(enrollmentTextField.text!)!
        college.urlString = urlStringTextField.text!
        
    }
    
    @IBAction func websiteGoButton(sender: UIButton) {
        let url = NSURL(string: urlStringTextField.text!)
        UIApplication.sharedApplication().openURL(url!)
    }

    }

