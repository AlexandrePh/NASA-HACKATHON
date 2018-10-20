//
//  ViewController.swift
//  FireChain
//
//  Created by Alexandre Philippi on 20/10/18.
//  Copyright © 2018 free. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var button:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
    }

    @IBAction func reportDanger(_ sender: UIButton) {
        guard let currentLocation = gpsService.fetchCurrentLocation() else{
            return
        }
        currentLocation.
        
    }
    
}

