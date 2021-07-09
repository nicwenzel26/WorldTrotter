//
//  LengthConverterViewController.swift
//  WorldTrotter
//
//  Created by Nicholas Wenzel on 6/26/21.
//

import UIKit

class LengthConverterViewController: UIViewController {
    @IBOutlet var centimetersLabel: UILabel!
    @IBOutlet var inchesTextField: UITextField!
    
    
    
    // Function for changing the field
    @IBAction func inchesFeildChanged(_ textField: UITextField) {
        // If the field is empty show ???
        if let text = textField.text, !text.isEmpty {
            centimetersLabel.text = text
        }
        else {
            centimetersLabel.text = "???"
        }
    }
    
    // Function for dismissing the keyboard
    @IBAction func dismissKeyboard(_ sender:UITapGestureRecognizer) {
        inchesTextField.resignFirstResponder()
    }
    
}
