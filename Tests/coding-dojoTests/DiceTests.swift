//
//  File.swift
//  
//
//  Created by pongsakorn on 24/4/2563 BE.
//

import XCTest
import Quick
import Nimble
@testable import coding_dojo

final class Dice_Test : QuickSpec {
    
    override func spec() {
        describe("Dice Game") {
            context("if thow dice") {
                it("got value 2,2,3,4,6,6") {
                    let values = [2,2,3,4,6,6]
                    let dice = Dice(values: values)
                    let score = dice.score()
                    expect(score).to(equal(0))
                }
            }
        }
    }
}
