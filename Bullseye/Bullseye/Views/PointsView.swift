//
//  PointsView.swift
//  Bullseye
//
//  Created by Carlos Kimura on 15/12/23.
//

import SwiftUI

struct PointsView: View {
    var body: some View {
        VStack(spacing: 10) {
            InstructionText(text: "The slider value is")
            BigNumberText(text: "69")
            BodyText(text: "You scored 200 points 😻😻😻")
            Button {
                // start new round
            } label: {
                RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            }
            ButtonText(text: "Start New Round")
        }
        .padding()
        .frame(maxWidth: 300)
        .background(Color("BackgroundColor"))
        .cornerRadius(21)
        .shadow(radius: 10, x: 5, y: 5)
    }
}

#Preview {
    PointsView()
        .preferredColorScheme(.dark)
}
