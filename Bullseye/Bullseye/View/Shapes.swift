//
//  Shapes.swift
//  Bullseye
//
//  Created by Christian Özelt on 13.02.22.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        VStack {
            Circle()
                .stroke(Color.blue, lineWidth: 20.0)
                .frame(width: 200, height: 100.0)
        }
        .background(Color.green)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
