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
    
    @IBOutlet weak var report1button: UIButton!
    
    @IBOutlet weak var report2button: UIButton!
    
    var yourLocation:CLLocationCoordinate2D?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        map.delegate = self
        
        report1button.addTarget(self, action: #selector(report1), for: .touchUpInside)
        report2button.addTarget(self, action: #selector(report2), for: .touchUpInside)
        
        reload()
    }
    @objc func report2(){
        return
    }
    
    @objc func report1(){
        return
    }
    func reload(){
        
        if let centerLocation = gpsService.fetchCurrentLocation(){
            yourLocation = centerLocation.coordinate
            map.centerCoordinate = centerLocation.coordinate
            map.region = MKCoordinateRegion(center: centerLocation.coordinate, latitudinalMeters: 1500, longitudinalMeters: 1500)
            let annotation = map.userLocation
            map.addAnnotation(annotation)
        }
    }
    
}



extension ViewController: MKMapViewDelegate {
    // 1
//    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
//        return nil
//    }
}


class Incident:NSObject , MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var assetURL: String
    init(cordinate:CLLocationCoordinate2D, assetURL: String) {
        self.assetURL = assetURL
        self.coordinate = cordinate
        super.init()
        
    }
    convenience init(cordinate:CLLocationCoordinate2D) {
        let url = ""
        self.init(cordinate: cordinate, assetURL: url)
    }
}



func genericAlert(_ viewController: UIViewController, title: String, message: String, actions: [UIAlertAction]?) {
    
    
    let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
    
    if let actions = actions{
        for action in actions {
            
            alertController.addAction(action)
            
        }
        
    } else {
        alertController.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
    }
    
    
    DispatchQueue.main.async(execute: { () -> Void in
        
        viewController.present(alertController, animated: true, completion: nil)
        
    })
}
