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
    var operand: Double? //..................... double optional for the operand
    var operation: String? //................... string optional for the operation to be performed
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func plusMinusPressed(sender: UIButton) {
        if let currentValue = displayValue,
            doubleFromCurrentValue = Double( currentValue ){
                displayValue = "\(-1.0 * doubleFromCurrentValue)" //. flip the value by multiplying by -1.0
                displayLabel.text = displayValue
        }
        else{
            displayValue = nil
            displayLabel.text = "0"
        }
    }

    @IBAction func multiplyPressed(sender: AnyObject) {
        var valueFromDisplay: Double? //................. optional to hold the value from the display
        
        if let currentValue = displayValue,
            doubleFromCurrentvalue = Double( currentValue ){ //. check both optionals and assign if appropriate
                valueFromDisplay = doubleFromCurrentvalue
        }
        
        if( valueFromDisplay == nil ){ //.................... if the value entered is invalid
            displayLabel.text = "0" //.................... reset the label text and value to nil
            displayValue = nil
        }
        else if( operand == nil ){ //..................... if operand hasnt been set yet
            operand = valueFromDisplay //................. get the data from the label
            operation = "*" //............................ set the operation
            displayValue = nil //......................... clears the value b/c we already stored it
        }
        else if( operand != nil ){ //..................... if the operand is not nil perform the operation
            if( operation == "+" ){
                operand = operand! + valueFromDisplay!
            }
            if( operation == "-" ){
                operand = operand! - valueFromDisplay!
            }
            if( operation == "*" ){
                operand = operand! * valueFromDisplay!
            }
            if( operation == "/" ){
                operand = operand! / valueFromDisplay!
            }
            
            operation = "*"
            displayValue = nil
            displayLabel.text = operand!.description
        }
    }
    
    @IBAction func dividePressed(sender: UIButton) {
        var valueFromDisplay: Double? //................. optional to hold the value from the display
        
        if let currentValue = displayValue,
            doubleFromCurrentvalue = Double( currentValue ){ //. check both optionals and assign if appropriate
                valueFromDisplay = doubleFromCurrentvalue
        }
        
        if( valueFromDisplay == nil ){ //.................... if the value entered is invalid
            displayLabel.text = "0" //.................... reset the label text and value to nil
            displayValue = nil
        }
        else if( operand == nil ){ //..................... if operand hasnt been set yet
            operand = valueFromDisplay //................. get the data from the label
            operation = "/" //............................ set the operation
            displayValue = nil //......................... clears the value b/c we already stored it
        }
        else if( operand != nil ){ //..................... if the operand is not nil perform the operation
            if( operation == "+" ){
                operand = operand! + valueFromDisplay!
            }
            if( operation == "-" ){
                operand = operand! - valueFromDisplay!
            }
            if( operation == "*" ){
                operand = operand! * valueFromDisplay!
            }
            if( operation == "/" ){
                operand = operand! / valueFromDisplay!
            }
            
            operation = "/"
            displayValue = nil
            displayLabel.text = operand!.description
        }
    }
    
    @IBAction func minusPressed(sender: UIButton) {
        var valueFromDisplay: Double? //................. optional to hold the value from the display
        
        if let currentValue = displayValue,
            doubleFromCurrentvalue = Double( currentValue ){ //. check both optionals and assign if appropriate
                valueFromDisplay = doubleFromCurrentvalue
        }
        
        if( valueFromDisplay == nil ){ //.................... if the value entered is invalid
            displayLabel.text = "0" //.................... reset the label text and value to nil
            displayValue = nil
        }
        else if( operand == nil ){ //..................... if operand hasnt been set yet
            operand = valueFromDisplay //................. get the data from the label
            operation = "-" //............................ set the operation
            displayValue = nil //......................... clears the value b/c we already stored it
        }
        else if( operand != nil ){ //..................... if the operand is not nil perform the operation
            if( operation == "+" ){
                operand = operand! + valueFromDisplay!
            }
            if( operation == "-" ){
                operand = operand! - valueFromDisplay!
            }
            if( operation == "*" ){
                operand = operand! * valueFromDisplay!
            }
            if( operation == "/" ){
                operand = operand! / valueFromDisplay!
            }
            
            operation = "-"
            displayValue = nil
            displayLabel.text = operand!.description
        }
    }
    
    @IBAction func plusPressed(sender: UIButton) {
        var valueFromDisplay: Double? //................. optional to hold the value from the display
        
        if let currentValue = displayValue,
            doubleFromCurrentvalue = Double( currentValue ){ //. check both optionals and assign if appropriate
                valueFromDisplay = doubleFromCurrentvalue
        }
        
        if( valueFromDisplay == nil ){ //.................... if the value entered is invalid
            displayLabel.text = "0" //.................... reset the label text and value to nil
            displayValue = nil
        }
        else if( operand == nil ){ //..................... if operand hasnt been set yet
            operand = valueFromDisplay //................. get the data from the label
            operation = "+" //............................ set the operation
            displayValue = nil //......................... clears the value b/c we already stored it
        }
        else if( operand != nil ){ //..................... if the operand is not nil perform the operation
            if( operation == "+" ){
                operand = operand! + valueFromDisplay!
            }
            if( operation == "-" ){
                operand = operand! - valueFromDisplay!
            }
            if( operation == "*" ){
                operand = operand! * valueFromDisplay!
            }
            if( operation == "/" ){
                operand = operand! / valueFromDisplay!
            }
            
            operation = "+"
            displayValue = nil
            displayLabel.text = operand!.description
        }
    }
    
    @IBAction func equalPressed(sender: UIButton) {
        if let currentValue = displayValue,
            doubleFromCurrentValue = Double( currentValue ){
                if( operation == "+" ){
                    operand = operand! + doubleFromCurrentValue
                }
                if( operation == "-" ){
                    operand = operand! - doubleFromCurrentValue
                }
                if( operation == "*" ){
                    operand = operand! * doubleFromCurrentValue
                }
                if( operation == "/" ){
                    operand = operand! / doubleFromCurrentValue
                }
                
                displayLabel.text = operand!.description //.......... update the display text
                operation = nil //................................... reset operation
        }
        else{ //..................................................... if user enters gibberish
            displayValue = nil
            displayLabel.text = "0"
        }
    }
    
    @IBAction func backPressed(sender: UIButton) {
        if let currentValue = displayValue {
            displayValue = currentValue.substringToIndex( currentValue.endIndex.advancedBy(-1) ) //.. removes the last character and updates displayvalue with the newly substringed text
            
            if( displayValue == "" ){ //.. if its empty make it a zero
                displayValue = "0"
            }
            
            displayLabel.text = displayValue //. update the text for the label
        }
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

