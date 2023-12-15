//
//  RoundedImageViewStroked.swift
//  Bullseye
//
//  Created by Carlos Kimura on 15/12/23.
//

import SwiftUI

struct RoundedImageViewStroked: View {
    
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: 56, height: 56)
            .overlay {
                Circle()
                    .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2)
            }
    }
}

struct RoundedImageViewFilled: View {
    
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .frame(width: 56, height: 56)
            .background(
                Circle()
                    .fill(Color("ButtonFilledBackgroundColor"))
            )
        
    }
}

struct RoundRectTextViews: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .kerning(-0.2)
            .bold()
            .font(.title3)
            .frame(width: 68, height: 56)
            .foregroundStyle(Color("TextColor"))
            .overlay(
                RoundedRectangle(cornerRadius: 21)
                    .stroke(lineWidth: 2)
                    .foregroundStyle(Color("ButtonStrokeColor"))
            )
    }
}

#Preview {
    VStack {
        RoundedImageViewFilled(systemName: "arrow.counterclockwise")
        RoundedImageViewStroked(systemName: "list.dash")
        RoundRectTextViews(text: "100")
    }
}
