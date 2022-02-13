//
//  TextViews.swift
//  Bullseye
//
//  Created by Christian Özelt on 13.02.22.
//

import SwiftUI

struct InstructionText: View {
    var text: String
    var body: some View {
        Text(text)
            .foregroundColor(Color("TextColor"))
            .bold()
            .kerning(2.0)
            .multilineTextAlignment(.center)
            .lineSpacing(4)
            .font(.footnote)
        
    }
}

struct TargetText: View {
    @Binding var game: Game
    var body: some View {
        Text(String(game.target))
            .fontWeight(.black)
            .font(.largeTitle)
            .kerning(-1)
            .foregroundColor(Color("TextColor"))
    }
}

struct TextViews_Previews: PreviewProvider {
    @State static var game = Game()
    static var previews: some View {
        InstructionText(text: "🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
        TargetText(game: $game)
    }
}
