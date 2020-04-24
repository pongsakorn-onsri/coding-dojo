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
                
                it("got value 1,1,3,4,6,6") {
                    let values = [1,1,3,4,6,6]
                    let dice = Dice(values: values)
                    let score = dice.score()
                    expect(score).to(equal(200))
                }
                
                it("got value 1,1,5,4,6,6") {
                    let values = [1,1,5,4,6,6]
                    let dice = Dice(values: values)
                    let score = dice.score()
                    expect(score).to(equal(250))
                }
                
                it("got value 3,3,5,4,6,6") {
                    let values = [3,3,5,4,6,6]
                    let dice = Dice(values: values)
                    let score = dice.score()
                    expect(score).to(equal(50))
                }
                
                it("got value 1,1,1,4,6,6") {
                    let values = [1,1,1,4,6,6]
                    let dice = Dice(values: values)
                    let score = dice.score()
                    expect(score).to(equal(1000))
                }
                
                it("got value 2,2,2,4,6,6") {
                    let values = [2,2,2,4,6,6]
                    let dice = Dice(values: values)
                    let score = dice.score()
                    expect(score).to(equal(200))
                }
                
                it("got value 2,2,2,5,6,6") {
                    let values = [2,2,2,5,6,6]
                    let dice = Dice(values: values)
                    let score = dice.score()
                    expect(score).to(equal(250))
                }
                
                it("got value 3,3,3,4,6,6") {
                    let values = [3,3,3,4,6,6]
                    let dice = Dice(values: values)
                    let score = dice.score()
                    expect(score).to(equal(300))
                }
                
                it("got value 3,3,3,5,6,6") {
                    let values = [3,3,3,5,6,6]
                    let dice = Dice(values: values)
                    let score = dice.score()
                    expect(score).to(equal(350))
                }
                
                it("got value 3,3,3,4,4,4") {
                    let values = [3,3,3,4,4,4]
                    let dice = Dice(values: values)
                    let score = dice.score()
                    expect(score).to(equal(700))
                }
                
                it("got value 3,3,3,5,5,5") {
                    let values = [3,3,3,5,5,5]
                    let dice = Dice(values: values)
                    let score = dice.score()
                    expect(score).to(equal(800))
                }
                
                it("got value 5,5,5,1,6,6") {
                    let values = [5,5,5,1,6,6]
                    let dice = Dice(values: values)
                    let score = dice.score()
                    expect(score).to(equal(600))
                }
                
                it("got value 3,3,3,6,6,6") {
                    let values = [3,3,3,6,6,6]
                    let dice = Dice(values: values)
                    let score = dice.score()
                    expect(score).to(equal(900))
                }
                
                it("got value 1,1,1,1,2,3") {
                    let values = [1,1,1,1,2,3]
                    let dice = Dice(values: values)
                    let score = dice.score()
                    expect(score).to(equal(2000))
                }
                
                it("got value 1,1,1,1,1,3") {
                    let values = [1,1,1,1,1,3]
                    let dice = Dice(values: values)
                    let score = dice.score()
                    expect(score).to(equal(4000))
                }
                
                it("got value 1,1,1,1,1,1") {
                    let values = [1,1,1,1,1,1]
                    let dice = Dice(values: values)
                    let score = dice.score()
                    expect(score).to(equal(8000))
                }
                
                it("got value 2,2,2,2,3,4") {
                    let values = [2,2,2,2,3,4]
                    let dice = Dice(values: values)
                    let score = dice.score()
                    expect(score).to(equal(400))
                }
                
                it("got value 2,2,2,2,2,3") {
                    let values = [2,2,2,2,2,3]
                    let dice = Dice(values: values)
                    let score = dice.score()
                    expect(score).to(equal(800))
                }
                
                it("got value 2,2,2,2,2,2") {
                    let values = [2,2,2,2,2,2]
                    let dice = Dice(values: values)
                    let score = dice.score()
                    expect(score).to(equal(1600))
                }
                
                it("got value 2,2,2,2,4,3") {
                    let values = [2,2,2,2,4,3]
                    let dice = Dice(values: values)
                    let score = dice.score()
                    expect(score).to(equal(400))
                }
                
                it("got value 2,2,3,3,4,4") {
                    let values = [2,2,3,3,4,4]
                    let dice = Dice(values: values)
                    let score = dice.score()
                    expect(score).to(equal(800))
                }
                
                it("got value 1,1,3,3,4,4") {
                    let values = [1,1,3,3,4,4]
                    let dice = Dice(values: values)
                    let score = dice.score()
                    expect(score).to(equal(800))
                }
                
                it("got value 1,1,3,3,4,4") {
                    let values = [1,1,3,3,4,4]
                    let dice = Dice(values: values)
                    let score = dice.score()
                    expect(score).to(equal(800))
                }
                
                it("got value 1,2,3,4,5,6") {
                    let values = [1,2,3,4,5,6]
                    let dice = Dice(values: values)
                    let score = dice.score()
                    expect(score).to(equal(1200))
                }
                
                it("got value 2,1,4,3,5,6") {
                    let values = [2,1,4,3,5,6]
                    let dice = Dice(values: values)
                    let score = dice.score()
                    expect(score).to(equal(150))
                }
                
                it("got value 1,2,3,4,5 and 6 is gone") {
                    let values = [2,1,4,3,5]
                    let dice = Dice(values: values)
                    let score = dice.score()
                    expect(score).to(equal(150))
                }
                
                it("got value 1,1,2,2") {
                    let values = [1,1,2,2]
                    let dice = Dice(values: values)
                    let score = dice.score()
                    expect(score).to(equal(200))
                }
            }
        }
    }
}
