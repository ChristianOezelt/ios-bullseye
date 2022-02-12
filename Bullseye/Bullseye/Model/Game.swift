//
//  Game.swift
//  Bullseye
//
//  Created by Christian Özelt on 12.02.22.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    func calculatePoints(sliderValue: Int) -> Int {
        return 100 - abs(target - sliderValue)
    }
}
