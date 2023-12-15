//
//  Shapes.swift
//  Bullseye
//
//  Created by Carlos Kimura on 15/12/23.
//

import SwiftUI

struct Shapes: View {
    
    @State private var wideShapes = true
    
    var body: some View {
        VStack {
            if !wideShapes {
                Circle()
                    .strokeBorder(.blue, lineWidth: 20)
                    .frame(width: 200, height: 100)
                    .background(.green)
                    .transition(.opacity)
            }
            
            RoundedRectangle(cornerRadius: 20)
                .fill(.blue)
                .frame(width: wideShapes ? 200 : 100, height: 100)
            
            Capsule()
                .fill(.blue)
                .frame(width: wideShapes ? 200 : 100, height: 100)
            
            Ellipse()
                .fill(.blue)
                .frame(width: wideShapes ? 200 : 100, height: 100)
            
            Button("Animate!") {
                withAnimation {
                    wideShapes.toggle()
                }
            }
        }
    }
}

#Preview {
    Shapes()
}
