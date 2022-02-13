//
//  GuessSlider.swift
//  Bullseye
//
//  Created by Christian Özelt on 13.02.22.
//

import SwiftUI

struct GuessSlider: View {
    @Binding var guess: Double
    
    var body: some View {
        HStack {
            TextLabel(text: "1")
            Slider(value: $guess, in: 1.0...100.0)
            TextLabel(text: "100")
        }
        
    }
}

struct TextLabel : View {
    var text: String
    var body: some View {
        Text(text)
            .font(.body)
            .bold()
            .frame(width: 35.0)
            .foregroundColor(Color("TextColor"))
    }
}

struct GuessSlider_Previews: PreviewProvider {
    @State static var guess = 50.0
    static var previews: some View {
        GuessSlider(guess: $guess)
    }
}
