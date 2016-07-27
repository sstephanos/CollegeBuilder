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

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var mapTextField: UITextField!
    var college = ""
    override func viewDidLoad() {
        super.viewDidLoad()
    
    mapTextField.text = college

        }
    func mapTextFieldShouldReturn(mapTextField: UITextField) -> Bool {
        let geocoder = CLGeocoder()
        geocoder.geocodeAddressString(mapTextField.text!, completionHandler:
            { (placemarks, error) in
                if error != nil {
                    print (error)
                }
                else {
                    let placemark = placemarks!.first as CLPlacemark!
                    let center = placemark.location!.coordinate
                    let span = MKCoordinateSpanMake(0.1, 0.1)
                    self.displayMap(center, span: span, pinTitle: mapTextField.text!)
                }
        })
        
        mapTextField.resignFirstResponder()
        return true
    }
    func displayMap(center: CLLocationCoordinate2D,
                    span: MKCoordinateSpan,
                    pinTitle: String){
        let region = MKCoordinateRegionMake(center, span)
        let pin = MKPointAnnotation()
        pin.coordinate = center
        pin.title = pinTitle
        mapView.addAnnotation(pin)
        mapView.setRegion(region, animated: true)
    }
    }
    

    


