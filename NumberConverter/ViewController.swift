//
//  ViewController.swift
//  NumberConverter
//
//  Created by Konrad Turlejski on 16/12/2018.
//  Copyright © 2018 Konrad Turlejski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var decimalTextField: UITextField!
    
    @IBOutlet weak var binaryTextField: UITextField!
    
    @IBOutlet weak var octalTextField: UITextField!
    
    @IBOutlet weak var hexaTextField: UITextField!
    
    
    @IBAction func clearTextFields(_ sender: UIButton) {
        decimalTextField.text = ""
        binaryTextField.text = ""
        octalTextField.text = ""
        hexaTextField.text = ""
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
 
    
    
    
    @IBAction func decimalEdit(_ sender: Any) {
        
        
        let decimalText: String = decimalTextField.text!
        let decimalTextInt = Int(decimalText)

        let decimalToBinary = String(decimalTextInt ?? 0, radix: 2, uppercase: true)
        binaryTextField.text = String (decimalToBinary)

        let decimalToOctal = String (decimalTextInt ?? 0, radix: 8, uppercase: true)
        octalTextField.text = String(decimalToOctal)

        let decimalToHex = String(decimalTextInt ?? 0, radix: 16, uppercase: true)
        hexaTextField.text = String (decimalToHex)
        
    }
    
    
    
    @IBAction func binaryEdit(_ sender: Any) {

        let binaryToDecimal = String(binaryTextField.text!)
        if let decimal = Int(String(binaryToDecimal), radix: 2) {
            decimalTextField.text = String(decimal)
        }
        
    }
    
    @IBAction func octalEdit(_ sender: Any) {
        
        let octalToDecimal = String(octalTextField.text!)
        if let decimal = Int(String(octalToDecimal), radix: 8) {
            decimalTextField.text = String(decimal)
        }
        
    }
    
    
    @IBAction func hexEdit(_ sender: Any) {
        
        let hexToDecimal = String(hexaTextField.text!)
        if let decimal = Int(String(hexToDecimal), radix: 16) {
            decimalTextField.text = String(decimal)
        }
        
        let hexToBinary = String(binaryTextField.text!)
        if let binary = Int(String(hexToBinary), radix: 2) {
            binaryTextField.text = String(binary)
        }
        
    }
}

