//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by Nicholas Wenzel on 6/26/21.
//

import UIKit

class ConversionViewController: UIViewController {
    
    // Outlet definitions
    @IBOutlet var celciusLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("ConversionViewController loaded its view")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // For silver challenge, randomizeing background color everytime the view for the converter is loaded on screen 
        //view.backgroundColor = UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1.0)
        
    }
    
    @IBAction func fahrenheitFieldEditingCHanged(_ textField: UITextField) {
        // If the feild is empty show '???' otherwise show the number
        if let text = textField.text, !text.isEmpty {
            celciusLabel.text = text
        }
        else {
            celciusLabel.text = "???"
        }
    }
    
}
