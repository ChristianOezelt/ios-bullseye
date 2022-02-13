//
//  InstructionView.swift
//  Bullseye
//
//  Created by Christian Özelt on 13.02.22.
//

import SwiftUI

struct InstructionView: View {
    @Binding var game: Game
    var text: String
    
    var body: some View {
        VStack{
            InstructionText(text: text)
            TargetText(game: $game)
        }
    }
}

struct InstructionView_Previews: PreviewProvider {
    @State static var game = Game()
    static var previews: some View {
        InstructionView(game: $game, text:"🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO" )
    }
}
