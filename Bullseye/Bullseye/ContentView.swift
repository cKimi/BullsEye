//
//  ContentView.swift
//  Bullseye
//
//  Created by Carlos Kimura on 13/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
            .bold()
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
            .kerning(2.0)
        Text("89")
            .kerning(-1.0)
            .font(.largeTitle)
            .fontWeight(.black)
        HStack {
            Text("1")
                .bold()
            Slider(value: .constant(50), in: 1.0...100.0)
            Text("100")
                .bold()
        }
        
        Button("Hit me") {
            
        }
    }
}

#Preview {
    ContentView()
}
