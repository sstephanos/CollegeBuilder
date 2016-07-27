//
//  MapViewController.swift
//  CollegeBuilderApp
//
//  Created by Samone on 7/27/16.
//  Copyright © 2016 Simon Stephanos. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var mapTextField: UITextField!
    var college = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
    mapTextField.text = college

        }

    }
    

    


