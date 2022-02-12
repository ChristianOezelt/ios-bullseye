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
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                    .foregroundColor(Color("TextColor"))
                    .bold()
                    .kerning(2.0)
                    .multilineTextAlignment(.center)
                    .lineSpacing(4)
                    .font(.footnote)
                    .padding(.leading, 30)
                    .padding(.trailing, 30)
                Text(String(game.target))
                    .fontWeight(.black)
                    .font(.largeTitle)
                    .kerning(-1)
                    .foregroundColor(Color("TextColor"))
                HStack {
                    Text("1")
                        .font(.body)
                        .bold()
                        .foregroundColor(Color("TextColor"))
                    Slider(value: self.$sliderValue, in: 1.0...100.0)
                    Text("100")
                        .font(.body)
                        .bold()
                        .foregroundColor(Color("TextColor"))
                }.padding()
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
                .alert(isPresented: $isPopoverVisible, content: {
                    let roundedValue: Int = Int(self.sliderValue.rounded())
                    return Alert(title: Text("Hello There"),
                                 message: Text("The slider's value is \(roundedValue).\n" + "You scored \(self.game.calculatePoints(sliderValue: roundedValue)) points this round"),
                                 dismissButton: .default(Text("Awesome!")))
                })
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
