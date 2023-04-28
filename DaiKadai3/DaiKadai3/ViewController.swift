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
        let num1: Int = Int(number1TextField.text!) ?? 0

        let signedNumber1: Int

        if number1Switch.isOn {
            signedNumber1 = -num1
        } else {
            signedNumber1 = num1
        }

        let num2: Int = Int(number2TextField.text!) ?? 0
        
        let signedNumber2: Int

        if number2Switch.isOn {
            signedNumber2 = -num2
        } else {
            signedNumber2 = num2
        }

        calculate1Label.text = String(signedNumber1)
        calculate2Label.text = String(signedNumber2)
        resultLabel.text = String(signedNumber1 + signedNumber2)
    }
}
