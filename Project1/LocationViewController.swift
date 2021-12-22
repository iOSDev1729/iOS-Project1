//
//  LocationViewController.swift
//  Project1
//
//  Created by Radhika Chilukuri on 22/12/21.
//

import UIKit
import GoogleMaps

class LocationViewController: UIViewController,CLLocationManagerDelegate {
    
    var locationManager = CLLocationManager()
    
    @IBOutlet weak var mapView: GMSMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initializeTheLocationManger()
        mapView.isMyLocationEnabled = true

    }
    func initializeTheLocationManger() {
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {

        let location = locationManager.location?.coordinate

            cameraMoveToLocation(toLocation: location)

        }
    func cameraMoveToLocation(toLocation: CLLocationCoordinate2D?) {
            if toLocation != nil {
                mapView.camera = GMSCameraPosition.camera(withTarget: toLocation!, zoom: 15)
            }
    
}
    
    }
