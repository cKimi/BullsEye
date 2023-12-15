//
//  TextViews.swift
//  Bullseye
//
//  Created by Carlos Kimura on 14/12/23.
//

import SwiftUI

struct TextViews: View {
    
    var text: String
    
    var body: some View {
        Text(text.uppercased())
            .bold()
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
            .kerning(2.0)
            
            .foregroundColor(Color("TextColor"))
    }
}

struct BigNumberText: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .kerning(-1.0)
            .font(.largeTitle)
            .fontWeight(.black)
            .foregroundColor(Color("TextColor"))
    }
}

struct SliderLabelText: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .bold()
            .foregroundColor(Color("TextColor"))
    }
}

struct LabelText: View {
    
    var text: String
    
    var body: some View {
        Text(text.uppercased())
            .kerning(1.5)
            .font(.caption)
            .bold()
            .foregroundColor(Color("TextColor"))
    }
}

#Preview {
    VStack {
        TextViews(text: "Instructions")
        BigNumberText(text: "999")
        SliderLabelText(text: "99")
        LabelText(text: "Score")
    }
    
}


