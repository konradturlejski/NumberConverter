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
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
//        let binaryText: String = binaryTextField.text!
//        let binaryTextInt = Int(binaryText)
//        
//        let binaryToDecimal = String(binaryTextInt ?? 0, radix: 2, uppercase: true)
//        decimalTextField.text = String(binaryToDecimal)
//        
////        if let number = Int(binaryText, radix: 2) {
////            print(number) // Output: 25
////        }
////
//
        
    }
    
    @IBAction func octalEdit(_ sender: Any) {
    }
    
    
    @IBAction func hexEdit(_ sender: Any) {
    }
}

