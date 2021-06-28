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
        
        
        // Adding functionality to the selection of the segmentedControl Bar
        segmentedControl.addTarget(self, action: #selector(mapTypeChanged(_:)), for: .valueChanged)
        
        
        // Creating the text label for the interest options switch
        let interestLabel = UILabel()
        interestLabel.text = "Points of Interest"
        interestLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(interestLabel)
        // Defining the constraits for the text label
        let interestTop = interestLabel.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 20)
        let interestLeading = interestLabel.leadingAnchor.constraint(equalTo: margin.leadingAnchor)
        // Activiating the constraints for the UIText
        interestTop.isActive = true
        interestLeading.isActive = true
        
        
        // Creating the Switch
        let interestSwitch = UISwitch()
        interestSwitch.translatesAutoresizingMaskIntoConstraints = false
        interestSwitch.isOn = true
        view.addSubview(interestSwitch)
        // Defining the constraints for the switch
        let switchTop = interestSwitch.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 20)
        let switchLeading = interestSwitch.leadingAnchor.constraint(equalTo: interestLabel.trailingAnchor, constant: 8)
        // Activating the constraints
        switchTop.isActive = true
        switchLeading.isActive = true
        
        interestSwitch.addTarget(self, action: #selector(interestToggled(_:)), for: .valueChanged)
    }
    
    // Function method for selection of segmentedControl
    @objc func mapTypeChanged(_ segControl: UISegmentedControl) {
        switch segControl.selectedSegmentIndex {
        case 0:
            mapView.mapType = .standard
            break
        case 1:
            mapView.mapType = .hybrid
            break
        case 2:
            mapView.mapType = .satellite
            break
        default:
            print("ERROR SELECTING MAP TYPE")
            break
        }
    }
    
    @objc func interestToggled(_ UIswitch: UISwitch) {
        switch UIswitch.isOn {
        case true:
            mapView.pointOfInterestFilter = .includingAll
            break
        case false:
            mapView.pointOfInterestFilter = .excludingAll
        }
    }
}
