//
//  College.swift
//  CollegeBuilderApp
//
//  Created by Samone on 7/25/16.
//  Copyright © 2016 Simon Stephanos. All rights reserved.
//

import UIKit

class College: NSObject {
    var name = ""
    var location = ""
    var enrollment = 0
    var image = UIImage(named: "Default")
    var urlString = ""
    
    convenience init(name: String, location: String, enrollment: Int, image: UIImage, urlString: String){
        self.init()
        self.name = name
        self.location = location
        self.enrollment = enrollment
        self.image = image
        self.urlString = urlString
    }
    
    convenience init(name: String) {
        self.init()
        self.name = name
        
    }
    
    
    }



