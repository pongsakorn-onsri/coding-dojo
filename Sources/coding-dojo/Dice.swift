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
        var score = 0
        for value in values {
            if value == 1 {
                score = score + 100
            }
            if value == 5 {
                score = score + 50
            }
        }
        return score
    }
}
