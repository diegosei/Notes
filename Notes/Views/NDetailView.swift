//
//  NDetailView.swift
//  Notes
//
//  Created by Diego Seitler on 24/07/2025.
//

import SwiftUI

struct NDetailView: View {
    @State var card: NCard
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text(card.title)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.leading)
                Text(card.text)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity)
                Spacer()
            }
            .background(Color.orange.opacity(0.3))
            .cornerRadius(16)
            .padding()
        }
        .background(Color.white)
        .cornerRadius(16)
        .padding()
        .background(Color.cyan.opacity(0.2))
    }
}

#Preview {
    NDetailView(card: NCard(title: "The real title", text: "Texto textin textote", type: .medium, toggle: false))
}
