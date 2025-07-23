//
//  AnimationsPractice.swift
//  Notes
//
//  Created by Diego Seitler on 23/07/2025.
//

import SwiftUI

struct AnimationsPractice: View {
    @State var showGreen: Bool = false
    
    var body: some View {
        VStack {
            // Círculo azul
            Circle()
                .foregroundStyle(Color.cyan)
                .frame(width: 200, height: 200)
                .onTapGesture {
                    withAnimation {
                        showGreen.toggle()
                    }
                }

            // Círculo verde (visible si showGreen es true)
            if showGreen {
                Circle()
                    .foregroundStyle(Color.green)
                    .frame(width: 200, height: 200)
                    .transition(.scale)
            }
        }
    }
}

#Preview {
    AnimationsPractice()
}
