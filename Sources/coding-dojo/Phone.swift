//
//  File.swift
//  
//
//  Created by pongsakorn on 8/5/2563 BE.
//

import Foundation

class Phone {
    
    let input: String
    
    init(input: String) {
        self.input = input
    }
    
    func getMessage() -> String {
        return input
    }
}
