//
//  HitMeButton.swift
//  Bullseye
//
//  Created by Christian Özelt on 13.02.22.
//

import SwiftUI

struct HitMeButton: View {
    @Binding var isPopoverVisible: Bool
    @Binding var guess: Double
    @Binding var game: Game
    
    var body: some View {
        Button(action: {
            self.isPopoverVisible = true
        }){
            Text("Hit me".uppercased()).bold().font(.title3)
        }
        .padding(20.0)
        .background(
            ZStack{
                Color("ButtonColor")
                LinearGradient(
                    gradient: Gradient(
                        colors: [Color.white.opacity(0.3), Color.clear]),
                    startPoint: .top,
                    endPoint: .bottom
                    
                )
            }
            
        )
        .foregroundColor(Color.white)
        .cornerRadius(21)
        .overlay(RoundedRectangle(cornerRadius: 21.0).strokeBorder(Color.white, lineWidth: 2.0))
        .alert(isPresented: $isPopoverVisible, content: {
            let roundedValue: Int = Int(self.guess.rounded())
            return Alert(title: Text("Hello There"),
                         message: Text("The slider's value is \(roundedValue).\n" + "You scored \(game.calculatePoints(sliderValue: roundedValue)) points this round"),
                         dismissButton: .default(Text("Awesome!")))
        })
    }
}

struct HitMeButton_Previews: PreviewProvider {
    @State static var isPopoverVisible = false
    @State static var guess = 50.0
    @State static var game = Game()
    
    static var previews: some View {
        HitMeButton(isPopoverVisible: $isPopoverVisible, guess: $guess, game: $game)
            .preferredColorScheme(.dark)
    }
}
