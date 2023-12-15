//
//  Shapes.swift
//  Bullseye
//
//  Created by Carlos Kimura on 15/12/23.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        VStack {
            Circle()
                .strokeBorder(.blue, lineWidth: 20)
                .frame(width: 200, height: 100)
                .background(.green)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(.blue)
                .frame(width: 200, height: 100)
            
            Capsule()
                .fill(.blue)
                .frame(width: 200, height: 100)
            
            Ellipse()
                .fill(.blue)
                .frame(width: 200, height: 100)
        }
    }
}

#Preview {
    Shapes()
}
