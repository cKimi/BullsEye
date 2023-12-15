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
    }
}

struct RoundedImageViewFilled: View {
    
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: 56, height: 56)
    }
}

#Preview {
    VStack {
        RoundedImageViewFilled(systemName: "arrow.counterclockwise")
        RoundedImageViewStroked(systemName: "list.dash")
    }
}
