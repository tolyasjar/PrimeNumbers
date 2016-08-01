//
//  PrimeViewController.swift
//  Prime_Numbers
//
//  Created by Toleen Jaradat on 8/1/16.
//  Copyright © 2016 Toleen Jaradat. All rights reserved.
//

import UIKit

class PrimeViewController: UIViewController {

    @IBOutlet weak var numberTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func IsItPrime(sender: AnyObject) {
        
        let prime = Prime()
        
        let enteredNumber = Int(numberTextField.text!)
        
        if (enteredNumber == nil) {
            
            resultLabel.text = "Invalid Input"

        } else if (enteredNumber<0 || enteredNumber>100){
            
            resultLabel.text = "Invalid Input"
        } else if ((numberTextField.text?.isEmpty) == nil) {
            
            resultLabel.text = "Invalid Input"
            
        }
            
        else {
            
        let primeFlag = prime.checkIfPrime(enteredNumber!)
        printLabel(primeFlag, enteredNumber: enteredNumber!)
            
        }
        }
    
    func printLabel(primeFlag: Bool,enteredNumber: Int) {
        
        if primeFlag {
            
            resultLabel.text = "\(enteredNumber) is prime!"
            
        } else {
            
            resultLabel.text = "\(enteredNumber) is not prime"
            
                }
    
    }



    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

 
}
