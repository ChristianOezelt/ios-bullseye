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
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4)
                .font(.footnote)
            Text(String(game.target))
                .fontWeight(.black)
                .font(.largeTitle)
                .kerning(-1)
            HStack {
                Text("1")
                    .font(.body)
                    .bold()
                Slider(value: self.$sliderValue, in: 1.0...100.0)
                Text("100")
                    .font(.body)
                    .bold()
            }
            Button("Hit me"){
                self.isPopoverVisible = true
            }.alert(isPresented: $isPopoverVisible, content: {
                let roundedValue: Int = Int(self.sliderValue.rounded())
                return Alert(title: Text("Hello There"),
                             message: Text("The slider's value is \(roundedValue).\n" + "You scored \(self.game.calculatePoints(sliderValue: roundedValue)) points this round"),
                      dismissButton: .default(Text("Awesome!")))
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView().previewLayout(.fixed(width: 568, height: 320))
    }
}
