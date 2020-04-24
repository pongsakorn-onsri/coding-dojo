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
        var numberOfTwo = 0
        var numberOfThree = 0
        var numberOfFour = 0
        var numberOfFive = 0
        var numberOfSix = 0
        for value in values {
            if value == 1 {
                score = score + singleOneValue
                numberOfOne += 1
            }
            if value == 5 {
                score = score + 50
                numberOfFive += 1
            }
            if value == 2 {
                numberOfTwo += 1
            }
            if value == 3 {
                numberOfThree += 1
            }
            if value == 4 {
                numberOfFour += 1
            }
            if value == 6 {
                numberOfSix += 1
            }
        }
        
        if numberOfOne == 3 {
            score += 1000 - (numberOfOne * singleOneValue)
        }
        if numberOfTwo == 3 {
            score += 200
        }
        if numberOfThree == 3 {
            score += 300
        }
        if numberOfFour == 3 {
            score += 400
        }
        if numberOfFive == 3 {
            score += 500 - (numberOfFive * 50)
        }
        if numberOfSix == 3 {
            score += 600
        }
        return score
    }
}
