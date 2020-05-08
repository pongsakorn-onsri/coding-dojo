//
//  File.swift
//  
//
//  Created by pongsakorn on 8/5/2563 BE.
//

import Foundation
import Quick
import Nimble
@testable import coding_dojo

final class Phone_Test : QuickSpec {
    
    override func spec() {
        
        describe("As a Phone") {
            
            it("input is 112345 then message is 112345") {
                let phone = Phone(input: "112345")
                let message = phone.getMessage()
                expect(message).to(be("112345"))
            }
            
            it("input is 11 then message is A") {
                let phone = Phone(input: "11")
                let message = phone.getMessage()
                expect(message).to(be("A"))
            }
        }
    }
}
