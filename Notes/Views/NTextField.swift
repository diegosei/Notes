//
//  NTextField.swift
//  Notes
//
//  Created by Diego Seitler on 23/07/2025.
//

import SwiftUI

struct NTextField: View {
    var placeHolder: String = ""
    @Binding var text: String
    
    var body: some View {
        TextField(placeHolder, text: $text)
            .font(.headline)
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(16)
    }
}

#Preview {
    VStack {
        NTextField(placeHolder: "Escribe algo aqui...", text: .constant("Texto inicial..."))
    }
    .padding()
}
