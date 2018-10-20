//
//  File.swift
//  FireChain
//
//  Created by Alexandre Philippi on 20/10/18.
//  Copyright © 2018 free. All rights reserved.
//

import Foundation
import CoreLocation
let gpsService = LocationService.sharedInstance
class LocationService:NSObject {
    
    static let sharedInstance = LocationService()
    let locationManager = CLLocationManager()
    private override init() {
        super.init()
    }
    
    func setup(){
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = 3
        locationManager.distanceFilter = 20
        locationManager.startUpdatingLocation()
        
    }
    func fetchCurrentLocation()->CLLocation?{
        return locationManager.location
    
    }
    
}

extension LocationService : CLLocationManagerDelegate{
    
}
