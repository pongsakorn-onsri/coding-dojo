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
            
            it("input is 2 then message is A") {
                let phone = Phone(input: "2")
                let message = phone.getMessage()
                expect(message).to(be("A"))
            }
            it("input is 22 then message is B") {
                let phone = Phone(input: "22")
                let message = phone.getMessage()
                expect(message).to(be("B"))
            }
            it("input is 222 then message is C") {
                let phone = Phone(input: "222")
                let message = phone.getMessage()
                expect(message).to(be("C"))
            }
            it("input is 3 then message is D") {
                let phone = Phone(input: "3")
                let message = phone.getMessage()
                expect(message).to(be("D"))
            }
            it("input is 33 then message is E") {
                let phone = Phone(input: "33")
                let message = phone.getMessage()
                expect(message).to(be("E"))
            }
            it("input is 333 then message is F") {
                let phone = Phone(input: "333")
                let message = phone.getMessage()
                expect(message).to(be("F"))
            }
        }
    }
}
