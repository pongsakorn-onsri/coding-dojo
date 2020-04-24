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
        let result = values.map { "\($0)" }.joined(separator: ",")
        let straightPattern = "1,2,3,4,5,6"
        if result == straightPattern {
            return 1200
        }
        let isAllPair = !groupedByNum.values.compactMap({ $0.count }).contains(where: { $0 != 2 })
        if groupedByNum.values.count == 3 && isAllPair {
            return 800
        }
        for (key, value) in groupedByNum {
            switch value.count {
            case 1:
                if key == 1 {
                    score += singleOneValue
                } else if key == 5 {
                    score += singleFiveValue
                }
            case 2:
                if key == 1 {
                    score += singleOneValue * value.count
                } else if key == 5 {
                    score += singleFiveValue * value.count
                }
            case 3: score += key == 1 ? 1000 : (100 * key)
            case 4: score += key == 1 ? 1000 * 2 : (100 * key) * 2
            case 5: score += key == 1 ? 1000 * 4 : (100 * key) * 4
            case 6: score += key == 1 ? 1000 * 8 : (100 * key) * 8
            default:
                break
            }
        }
        return score
    }
}
