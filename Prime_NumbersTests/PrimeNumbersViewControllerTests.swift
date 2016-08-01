//
//  PrimeNumbersViewControllerTests.swift
//  Prime_Numbers
//
//  Created by Toleen Jaradat on 8/1/16.
//  Copyright © 2016 Toleen Jaradat. All rights reserved.
//

import XCTest
@testable import Prime_Numbers

class PrimeNumbersViewControllerTests: XCTestCase {
    
    private var prime: Prime!
    private var storyboard :UIStoryboard!
    private var controller :PrimeViewController!
    
    
    override func setUp() {
        super.setUp()
        
        storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        controller = storyboard.instantiateViewControllerWithIdentifier("PrimeViewController") as! PrimeViewController
        
        _ = controller.view

        prime = Prime()
    }
    
    func testShouldReturnTrueForPrimeNumbers() {
        
        let flag = prime.checkIfPrime(5)
        XCTAssertEqual(true, flag)
        
    }
    
    func testShouldReturnInvalidInputIfTextFieldHasNegativeValue() {
        
        controller.numberTextField.text = "-5"
        controller.IsItPrime(UIButton())
        let result = controller.resultLabel.text
        XCTAssertTrue(result == "Invalid Input")
        
    }
    
    func testShouldReturnInvalidInputIfTextFieldIsEmpty() {
        
        controller.numberTextField.text = " "
        controller.IsItPrime(UIButton())
        let result = controller.resultLabel.text
        XCTAssertTrue(result == "Invalid Input")
        
    }
    
    func testShouldReturnInvalidInputIfTextFieldHasCharachters() {
        
        controller.numberTextField.text = "XX"
        controller.IsItPrime(UIButton())
        let result = controller.resultLabel.text
        XCTAssertTrue(result == "Invalid Input")
        
    }
    
    func testShouldReturnInvalidInputIfTextFieldNumberIsGreaterThan100() {
        
        controller.numberTextField.text = "101"
        controller.IsItPrime(UIButton())
        let result = controller.resultLabel.text
        XCTAssertTrue(result == "Invalid Input")
        
    }
    
    
    func testShouldReturnInvalidInputIfTextFieldNumberHasDecimalNumbers() {
        
        controller.numberTextField.text = "100.5"
        controller.IsItPrime(UIButton())
        let result = controller.resultLabel.text
        XCTAssertTrue(result == "Invalid Input")
        
    }


}
