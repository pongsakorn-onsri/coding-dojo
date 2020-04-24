//
//  File.swift
//  
//
//  Created by pongsakorn on 24/4/2563 BE.
//

import Foundation

class Dice {
    let values: [Int]
    
    init(values: [Int]) {
        self.values = values
    }
    
    func score() -> Int {
        let singleOneValue = 100
        
        var score = 0
        var numberOfOne = 0
        for value in values {
            if value == 1 {
                score = score + singleOneValue
                numberOfOne += 1
            }
            if value == 5 {
                score = score + 50
            }
        }
        
        if numberOfOne == 3 {
            score += 1000 - (numberOfOne * singleOneValue)
        }
        return score
    }
}
