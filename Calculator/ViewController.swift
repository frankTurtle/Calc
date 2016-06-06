//
//  ViewController.swift
//  Calculator
//
//  Created by Mr. Nobel on 6/6/16.
//  Copyright © 2016 Mr. Nobel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    var displayValue: String? //................ string optional for the label
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func plusMinusPressed(sender: UIButton) {
    }

    @IBAction func multiplyPressed(sender: AnyObject) {
    }
    
    @IBAction func dividePressed(sender: UIButton) {
    }
    
    @IBAction func minusPressed(sender: UIButton) {
    }
    
    @IBAction func plusPressed(sender: UIButton) {
    }
    
    @IBAction func equalPressed(sender: UIButton) {
    }
    
    @IBAction func decimalButtonPressed(sender: UIButton) {
        if let currentvalue = displayValue{ //.............. check to see if the display value is currently nil
            displayValue = currentvalue + "." //............ if its not then add a period to the end
        }
        else{
            displayValue = "." //........................... if the user hasn't entered anything
        }
        
        displayLabel.text = displayValue! //................ update the label text ( have to unwrap the value )
    }

    @IBAction func zeroButtonPressed(sender: UIButton) {
        if let currentValue = displayValue{
            displayValue = currentValue + "0"
        }
        else{
            displayValue = "0"
        }
        
        displayLabel.text = displayValue!
    }
    
    @IBAction func onePressed(sender: UIButton) {
        if let currentValue = displayValue{
            displayValue = currentValue + "1"
        }
        else{
            displayValue = "1"
        }
        
        displayLabel.text = displayValue!
    }
    
    @IBAction func twoPressed(sender: UIButton) {
        if let currentValue = displayValue{
            displayValue = currentValue + "2"
        }
        else{
            displayValue = "2"
        }
        
        displayLabel.text = displayValue!
    }
    
    @IBAction func threePressed(sender: UIButton) {
        if let currentValue = displayValue{
            displayValue = currentValue + "3"
        }
        else{
            displayValue = "3"
        }
        
        displayLabel.text = displayValue!
    }
    
    @IBAction func fourPressed(sender: UIButton) {
        if let currentValue = displayValue{
            displayValue = currentValue + "4"
        }
        else{
            displayValue = "4"
        }
        
        displayLabel.text = displayValue!
    }
    
    @IBAction func fivePressed(sender: UIButton) {
        if let currentValue = displayValue{
            displayValue = currentValue + "5"
        }
        else{
            displayValue = "5"
        }
        
        displayLabel.text = displayValue!
    }
    
    @IBAction func sixPressed(sender: UIButton) {
        if let currentValue = displayValue{
            displayValue = currentValue + "6"
        }
        else{
            displayValue = "6"
        }
        
        displayLabel.text = displayValue!
    }
    
    @IBAction func sevenPressed(sender: UIButton) {
        if let currentValue = displayValue{
            displayValue = currentValue + "7"
        }
        else{
            displayValue = "7"
        }
        
        displayLabel.text = displayValue!
    }
    
    @IBAction func eightPressed(sender: UIButton) {
        if let currentValue = displayValue{
            displayValue = currentValue + "8"
        }
        else{
            displayValue = "8"
        }
        
        displayLabel.text = displayValue!
    }
    
    @IBAction func ninePressed(sender: UIButton) {
        if let currentValue = displayValue{
            displayValue = currentValue + "9"
        }
        else{
            displayValue = "9"
        }
        
        displayLabel.text = displayValue!
    }
}

