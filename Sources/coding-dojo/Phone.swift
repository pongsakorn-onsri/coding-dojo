//
//  File.swift
//  
//
//  Created by pongsakorn on 8/5/2563 BE.
//

import Foundation

class Phone {
    
    var input: String
    
    var button1: [String] = [",", ",", "/"]
    var button2: [String] = ["A", "B", "C"]
    var button3: [String] = ["D", "E", "F"]
    var button4: [String] = ["G", "H", "I"]
    var button5: [String] = ["J", "K", "L"]
    var button6: [String] = ["M", "N", "O"]
    var button7: [String] = ["P", "Q", "R", "S"]
    var button8: [String] = ["T", "U", "V"]
    var button9: [String] = ["W", "X", "Y", "Z"]
    var button0: [String] = ["+"]
    var buttons: [[String]] {
        [button0, button1, button2, button3, button4, button5, button6, button7, button8, button9]
    }
        
    var buttonStar: (() -> Void)? = nil
    var buttonShap: (() -> Void)? = nil
    
    init(input: String) {
        self.input = input
    }
    
    func getMessage() -> String {
        var output: String = ""
        var temptInput: [String] = []
        input.forEach { (charactor) in
            temptInput.append(String(charactor))
        }
        let temptDict = Dictionary.init(grouping: temptInput, by: { Int($0)! })
        temptDict.forEach { (key, values) in
            let number = buttons[key]
            let index = values.count - 1
            let charactor = number[index]
            output += charactor
        } 
        return output
    }
}
