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
                it("got value 2,2,3,4,6,6 and score is 0") {
                    let values = [2,2,3,4,6,6]
                    let dice = Dice(values: values)
                    let score = dice.score()
                    expect(score).to(equal(0))
                }
                
                it("got value 1,1,3,4,6,6 ") {
                    let values = [1,1,3,4,6,6]
                    let dice = Dice(values: values)
                    let score = dice.score()
                    expect(score).to(equal(200))
                }
                
                it("got value 1,1,5,4,6,6 ") {
                    let values = [1,1,5,4,6,6]
                    let dice = Dice(values: values)
                    let score = dice.score()
                    expect(score).to(equal(250))
                }
                
                it("got value 3,3,5,4,6,6 ") {
                    let values = [3,3,5,4,6,6]
                    let dice = Dice(values: values)
                    let score = dice.score()
                    expect(score).to(equal(50))
                }
                
                it("got value 1,1,1,4,6,6 ") {
                    let values = [1,1,1,4,6,6]
                    let dice = Dice(values: values)
                    let score = dice.score()
                    expect(score).to(equal(1000))
                }
                
                it("got value 2,2,2,4,6,6 ") {
                    let values = [2,2,2,4,6,6]
                    let dice = Dice(values: values)
                    let score = dice.score()
                    expect(score).to(equal(200))
                }
                
                it("got value 2,2,2,5,6,6 ") {
                    let values = [2,2,2,5,6,6]
                    let dice = Dice(values: values)
                    let score = dice.score()
                    expect(score).to(equal(250))
                }
            }
        }
    }
}
