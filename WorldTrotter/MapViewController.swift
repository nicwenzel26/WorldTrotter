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
        
        let segmentedControl = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
        
        segmentedControl.backgroundColor = UIColor.systemBackground
        
        segmentedControl.selectedSegmentIndex = 0
        
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(segmentedControl)
        
        // Adding constraints
        
        let topConstrait = segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8)
        let margin = view.layoutMarginsGuide
        
        let leadingConstraint = segmentedControl.leadingAnchor.constraint(equalTo: margin.leadingAnchor)
        let traillingConstraint = segmentedControl.trailingAnchor.constraint(equalTo: margin.trailingAnchor)
        
        // Activating Constraints
        topConstrait.isActive = true
        leadingConstraint.isActive = true
        traillingConstraint.isActive = true
    }
}
