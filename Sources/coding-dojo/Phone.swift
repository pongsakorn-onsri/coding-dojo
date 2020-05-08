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
    var buttonStar: (() -> Void)? = nil
    var buttonShap: (() -> Void)? = nil
    
    init(input: String) {
        self.input = input
    }
    
    func getMessage() -> String {
        var output: String = ""
        if input == "2" {
            output = button2.first ?? ""
        } else if input == "22" {
            output = button2[1]
        } else if input == "222" {
            output = button2[2]
        } 
        return output
    }
}
