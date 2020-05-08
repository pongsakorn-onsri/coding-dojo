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
            it("input is 4 then message is G") {
                let phone = Phone(input: "4")
                let message = phone.getMessage()
                expect(message).to(be("G"))
            }
            it("input is 44 then message is H") {
                let phone = Phone(input: "44")
                let message = phone.getMessage()
                expect(message).to(be("H"))
            }
            it("input is 444 then message is I") {
                let phone = Phone(input: "444")
                let message = phone.getMessage()
                expect(message).to(be("I"))
            }
            
            it("input is 5 then message is J") {
                let phone = Phone(input: "5")
                let message = phone.getMessage()
                expect(message).to(be("J"))
            }
            it("input is 55 then message is K") {
                let phone = Phone(input: "55")
                let message = phone.getMessage()
                expect(message).to(be("K"))
            }
            it("input is 555 then message is L") {
                let phone = Phone(input: "555")
                let message = phone.getMessage()
                expect(message).to(be("L"))
            }
        }
    }
}
