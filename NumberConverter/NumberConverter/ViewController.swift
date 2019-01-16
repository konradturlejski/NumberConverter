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
        let decimalText = decimalTextField.text!
        guard let decimalTextInt = Int(decimalText) else { return }

        let decimalToBinary = String(decimalTextInt, radix: 2, uppercase: true)
        binaryTextField.text = decimalToBinary

        let decimalToOctal = String(decimalTextInt, radix: 8, uppercase: true)
        octalTextField.text = decimalToOctal

        let decimalToHex = String(decimalTextInt, radix: 16, uppercase: true)
        hexaTextField.text = decimalToHex
    }
    
    func convert(from: String, value: Int) -> [String : String] {
        // from - "what value should it convert into"
        // value = "value of the textField"
        // to = "to what value it should convert into"
        var outputDictonary = [String : String]()
        if from == "Binary" {
            outputDictonary["binary"] = String(value)
            outputDictonary["decimal"] = String(value, radix: 2)
            outputDictonary["octal"] = String(value, radix: 8)
            outputDictonary["hexa"] = String(value, radix: 16)
        } else if from == "Decimal" {
            // You should do the others using the above example
        } else if from == "Octal" {
            
        } else if from == "Hex" {
            
        }
        
        return outputDictonary
    }
    
    
    @IBAction func binaryEdit(_ sender: Any) {
        guard let binaryTextFieldValue = Int(binaryTextField.text!) else { return }
        let values = convert(from: "Binary", value: binaryTextFieldValue)
        binaryTextField.text = values["binary"]
        octalTextField.text = values["octal"]
        decimalTextField.text = values["decimal"]
        hexaTextField.text = values["hexa"]
        print(values)
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

