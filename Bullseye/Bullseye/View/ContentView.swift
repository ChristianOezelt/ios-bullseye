//
//  ContentView.swift
//  Bullseye
//
//  Created by Christian Özelt on 12.02.22.
//

import SwiftUI

struct ContentView: View {
    @State private var isPopoverVisible: Bool = false
    @State private var sliderValue = 50.0
    @State private var game = Game()
    
    var body: some View {
        ZStack{
            BackgroundView(game: $game)
            VStack {
                InstructionView(game: $game, text: "🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                    .padding(.leading, 30)
                    .padding(.trailing, 30)
                GuessSlider(guess: $sliderValue).padding()
                HitMeButton(isPopoverVisible: $isPopoverVisible, guess: $sliderValue, game: $game)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .preferredColorScheme(.dark)
        ContentView().previewLayout(.fixed(width: 568, height: 320))
        ContentView().previewLayout(.fixed(width: 568, height: 320))
            .preferredColorScheme(.dark)
    }
}
