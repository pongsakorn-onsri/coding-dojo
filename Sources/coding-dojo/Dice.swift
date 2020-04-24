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
        for (key, values) in groupedByNum {
            let baseValue = key == 1 ? 10 : key
            switch values.count {
            case 6: score += (100 * baseValue) * 8
            case 5: score += (100 * baseValue) * 4
            case 4: score += (100 * baseValue) * 2
            case 3: score += (100 * baseValue)
            case 2:
                if groupedByNum.values.filter({ $0.count == 3 }).count == 1 {
                    score += 250
                } else {
                    fallthrough
                }
            case 1:
                values.forEach { (value) in
                    if value == 1 {
                        score += 100
                    } else if value == 5 {
                        score += 50
                    }
                }
                
            default:
                break
            }
        }
        return score
    }
}
