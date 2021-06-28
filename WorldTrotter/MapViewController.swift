//
//  MapViewController.swift
//  WorldTrotter
//
//  Created by Nicholas Wenzel on 6/26/21.
//

import UIKit
// Library for the map tool kit
import MapKit

class MapViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("MapViewController loaded its view")
    }
    
    var mapView: MKMapView!
    
    override func loadView() {
        // Creating the map view
        mapView = MKMapView()
        
        // Setting the view of the view controller to the view
        view = mapView
    }
}
