//
//  PointsView.swift
//  Bullseye
//
//  Created by Carlos Kimura on 15/12/23.
//

import SwiftUI

struct PointsView: View {
    
    @Binding var alertIsVisible: Bool
    @Binding var sliderValue: Double
    @Binding var game: Game
    
    var body: some View {
        
        let roundedValue = Int(sliderValue.rounded())
        let points = game.points(sliderValue: roundedValue)
        
        VStack(spacing: 10) {
            InstructionText(text: "The slider value is")
            BigNumberText(text: String(roundedValue))
            BodyText(text: "You scored \(points) points 🎉🎉🎉")
            Button {
                alertIsVisible = false
                game.startNewRound(points: points)
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
    PointsView(alertIsVisible: .constant(false), sliderValue: .constant(51.0), game: .constant(Game()))
        .preferredColorScheme(.dark)
}
