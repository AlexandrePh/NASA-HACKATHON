//
//  ViewController.swift
//  FireChain
//
//  Created by Alexandre Philippi on 20/10/18.
//  Copyright © 2018 free. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet weak var map: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let centerLocation = gpsService.fetchCurrentLocation(){
             map.centerCoordinate = centerLocation.coordinate
        }
       
     
    }


    
}

