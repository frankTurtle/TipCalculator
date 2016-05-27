//
//  ViewController.swift
//  TipCalculator
//
//  Created by Mr. Nobel on 5/26/16.
//  Copyright © 2016 Mr. Nobel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalWithTipLabel: UILabel!
    
    var tipValue:Double? //............................ variable to hold the tip value and make it optional
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        billTextField.resignFirstResponder() //.................. hide keyboard
        
        print( billTextField.text! ) //.......................... optional
        
        if( billTextField.text! != "" && billTextField.text != nil ){
            if( tipValue != nil && tipValue! != 0 ){
                tipLabel.text = "\(tipValue!)" //....................... updates the label with the unwrapped optional
                
                let totalWithTip = tipValue! + Double( billTextField.text! )!
                totalWithTipLabel.text = "\(totalWithTip)"
            }
            else{
                tipLabel.text = "No Tip"
                totalWithTipLabel.text = "\(billTextField.text!)"
            }
            
        }
    }

    @IBAction func implicitlyConvertButton(sender: UIButton) {
    }
}

