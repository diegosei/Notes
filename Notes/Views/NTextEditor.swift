//
//  NTextEditor.swift
//  Notes
//
//  Created by Diego Seitler on 23/07/2025.
//

import SwiftUI

struct NTextEditor: View {
    var contentNote: String = ""
    @Binding var text: String
    
    var body: some View {
        TextEditor(text: $text)
            .scrollContentBackground(.hidden)
            .font(.body)
            .frame(height: 150)
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(16)
    }
}

#Preview {
    VStack {
        NTextEditor(contentNote: "Que estas pensando hoy?", text: .constant("el pepe"))
    }
}
