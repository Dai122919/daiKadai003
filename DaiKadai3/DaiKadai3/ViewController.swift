//
//  ViewController.swift
//  DaiKadai3
//
//  Created by 千原大作 on 2023/04/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var number1TextField: UITextField!
    @IBOutlet weak var number2TextField: UITextField!
    @IBOutlet weak var number1Switch: UISwitch!
    @IBOutlet weak var number2Switch: UISwitch!
    @IBOutlet weak var calculate1Label: UILabel!
    @IBOutlet weak var calculate2Label: UILabel!
    @IBOutlet weak var resultLabel: UILabel!

    @IBAction func button1(_ sender: Any) {
        let num1 : Int = Int(number1TextField.text!) ?? 0

        if number1Switch.isOn == false {
            calculate1Label.text = String(+num1)
        }else{
            calculate1Label.text = String(-num1)
        }

        let num2 : Int = Int(number2TextField.text!) ?? 0
        
        if number2Switch.isOn == false {
            calculate2Label.text = String(+num2)
        }else{
            calculate2Label.text = String(-num2)
        }
        
        let number1 :  Int = Int(calculate1Label.text!) ?? 0
        let number2 :  Int = Int(calculate2Label.text!) ?? 0
        resultLabel.text = String(number1 + number2)
    }
}
