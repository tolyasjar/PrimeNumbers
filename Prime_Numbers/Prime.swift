//
//  Prime.swift
//  Prime_Numbers
//
//  Created by Toleen Jaradat on 8/1/16.
//  Copyright © 2016 Toleen Jaradat. All rights reserved.
//

import UIKit

class Prime: NSObject {
    
    func checkIfPrime(number: Int) -> Bool {
        
            var isPrime = true
        
            if number == 0 { return false}
    
            if number == 1 {isPrime = false}
        
            if (number != 2 && number != 1 ) {
                
                for i in 2 ..< number  {
                    
                    if number % i == 0 {
                        
                        isPrime = false
                    }
                }
            }
        
        return isPrime
        
        }
    
}
