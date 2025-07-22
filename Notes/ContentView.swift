//
//  ContentView.swift
//  Notes
//
//  Created by Diego Seitler on 18/07/2025.
//

import SwiftUI

struct ContentView: View {
    
    let cards: [NCard] = [
        NCard(title: "card 1", text: "texto del card 1", type: .small, toggle: false),
        NCard(title: "card 2", text: "texto del card 2", type: .small, toggle: false),
        NCard(title: "card 3", text: "texto del card 3", type: .medium, toggle: false),
        NCard(title: "card 4", text: "texto del card 4", type: .small, toggle: false)
    ]
    
    var body: some View {
        VStack {
            NListView()
        }
        
    }
}

#Preview {
    ContentView()
}
