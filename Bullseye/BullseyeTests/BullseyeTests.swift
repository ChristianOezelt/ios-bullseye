//
//  BullseyeTests.swift
//  BullseyeTests
//
//  Created by Christian Özelt on 12.02.22.
//

import XCTest
@testable import Bullseye

class BullseyeTests: XCTestCase {
    var game: Game!

    override func setUpWithError() throws {
        self.game = Game()
    }

    override func tearDownWithError() throws {
        self.game = nil
    }

    func testScorePositive() {
        let guess = self.game.target + 5;
        let score = self.game.calculatePoints(sliderValue: guess);
        
        XCTAssertEqual(score, 95)
    }
    
    func testScoreNegative() {
        let guess = self.game.target - 5;
        let score = self.game.calculatePoints(sliderValue: guess);
        
        XCTAssertEqual(score, 95)
    }

}
