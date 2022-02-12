//
//  ContentView.swift
//  Bullseye
//
//  Created by Christian Özelt on 12.02.22.
//

import SwiftUI

struct ContentView: View {
    @State private var isPopoverVisible: Bool = false
    @State private var isWhoIsThereVisible: Bool = false

    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4)
                .font(.footnote)
            Text("89")
                .fontWeight(.black)
                .font(.largeTitle)
                .kerning(-1)
            HStack {
                Text("1")
                    .font(.body)
                    .bold()
                Slider(value: .constant(89), in: 1.0...100.0)
                Text("100")
                    .font(.body)
                    .bold()
            }
            Button("Hit me"){
                self.isPopoverVisible = true
            }.alert(isPresented: $isPopoverVisible, content: {
                Alert(title: Text("Hello There"),
                      message: Text("This is my first popup"),
                      dismissButton: .default(Text("Awesome!")))
            })
            Button("knock know"){
                self.isWhoIsThereVisible = true
            }.alert(isPresented: $isWhoIsThereVisible, content: {
                Alert(title: Text("Who is there?"),
                      message: Text("your mum"),
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
