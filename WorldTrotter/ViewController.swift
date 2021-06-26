//
//  ViewController.swift
//  WorldTrotter
//
//  Created by Nicholas Wenzel on 6/24/21.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /* Programic definition of views example
        
        // Initializing a frame with origin at (160, 240) with a width of 100 points (not px) and height of 150 points
        // CGRect means colored rectangle
        let firstFrame = CGRect(x: 160, y: 240, width: 100, height: 150)
        // Initializing a view with the previously defined frame
        let firstView = UIView(frame: firstFrame)
        
        // Setting the background color of the view to be blue
        firstView.backgroundColor = UIColor.blue
        
        // Adding the blue rectangle as a subveiw of the view controller
        view.addSubview(firstView)
        
        // Creating a rectangle frame with and origin of (20, 30) and a height and width of 50 points
        let secondFrame = CGRect(x: 20, y: 30, width: 50, height: 50)
        // Creating a view using the second frame
        let secondView = UIView(frame: secondFrame)
        // Setting the color of the view to be green
        secondView.backgroundColor = UIColor.green
        // Adding the second green rectangle as a sub view of the first blue rectangle, changing the greens origin relative to the blue 
        firstView.addSubview(secondView)
         */
        
        let gradient = CAGradientLayer()
        gradient.frame = self.view.bounds
        gradient.colors = [UIColor.yellow.cgColor, UIColor.blue.cgColor]
        gradient.opacity = 0.5
        view.layer.addSublayer(gradient)
    }


}

