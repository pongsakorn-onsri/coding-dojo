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
        let singleFiveValue = 50
        var score = 0
        let groupedByNum = Dictionary(grouping: self.values) { $0 }
        let isAllPair = !groupedByNum.values.compactMap({ $0.count }).contains(where: { $0 != 2 })
        if groupedByNum.values.count == 3 && isAllPair {
            return 800
        }
        
        for value in groupedByNum {
            switch value.value.count {
            case 1:
                if value.key == 1 {
                    score += singleOneValue
                } else if value.key == 5 {
                    score += singleFiveValue
                }
            case 2:
                if value.key == 1 {
                    score += singleOneValue * value.value.count
                } else if value.key == 5 {
                    score += singleFiveValue * value.value.count
                }
            case 3: score += value.key == 1 ? 1000 : (100 * value.key)
            case 4: score += value.key == 1 ? 1000 * 2 : (100 * value.key) * 2
            case 5: score += value.key == 1 ? 1000 * 4 : (100 * value.key) * 4
            case 6: score += value.key == 1 ? 1000 * 8 : (100 * value.key) * 8
            default:
                break
            }
        }
        return score
    }
}
