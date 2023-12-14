//
//  InstructionText.swift
//  Bullseye
//
//  Created by Carlos Kimura on 14/12/23.
//

import SwiftUI

struct InstructionText: View {
    
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

//struct SliderLabelText: View {
//    
//    @Binding var sliderValue: Double
//    
//    var body: some View {
//        HStack {
//            Text("1")
//                .bold()
//                .foregroundColor(Color("TextColor"))
//            Slider(value: $sliderValue, in: 1.0...100.0)
//            Text("100")
//                .bold()
//                .foregroundColor(Color("TextColor"))
//        }
//        .padding()
//    }
//}

#Preview {
    VStack {
        InstructionText(text: "Instructions")
        BigNumberText(text: "999")
        SliderLabelText(text: "99")
    }
    
}


