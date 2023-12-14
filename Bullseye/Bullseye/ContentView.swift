//
//  ContentView.swift
//  Bullseye
//
//  Created by Carlos Kimura on 13/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
    
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
            alertIsVisible = true
        }
        .alert("Hello cK!",
               isPresented: $alertIsVisible,
               actions: {
            Button("Awesome") {
                print("Alert closed")
            }
        }, message: {
            Text("This is my first alert!")
        })
    }
}

#Preview {
    ContentView()
}
