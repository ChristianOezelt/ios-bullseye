//
//  BackgroundView.swift
//  Bullseye
//
//  Created by Christian Özelt on 13.02.22.
//

import SwiftUI

struct BackgroundView: View {
    @Binding var game: Game
    var body: some View {
        VStack {
            TopView(game: $game)
            Spacer()
            BottomView(game: $game)
        }.padding().background(Color("BackgroundColor").edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
    }
}


struct TopView: View {
    @Binding var game: Game
    var body: some View {
        HStack {
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            Spacer()
            RoundedImageViewFilled(systemName: "list.dash")
        }
    }
}


struct BottomView: View {
    @Binding var game: Game
    var body: some View {
        HStack {
            NumberView(title: "Score", text: String(game.score))
            Spacer()
            NumberView(title: "Round", text: String(game.round))
        }
    }
}

struct NumberView: View {
    var title: String
    var text: String
    
    var body: some View {
        VStack {
            Text(title.uppercased()).foregroundColor(Color("TextColor")).kerning(1.5).font(.caption).bold().padding(5)
            Text(text).foregroundColor(Color("TextColor")).bold().kerning(-0.2).font(.title2).frame(width: 68, height: 55).overlay(RoundedRectangle(cornerRadius: 21).stroke(lineWidth: 2.0).foregroundColor(Color("ButtonStrokeColor")))
            
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    
    static var previews: some View {
        BackgroundView(game: .constant(Game()))
        BackgroundView(game: .constant(Game()))
            .preferredColorScheme(.dark)
    }
}
