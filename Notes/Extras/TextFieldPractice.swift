//
//  TextFieldPractice.swift
//  Notes
//
//  Created by Diego Seitler on 21/07/2025.
//

import SwiftUI

struct TextFieldPractice: View {
    @State var name: String = ""
    @State var color: Color = (Color.gray.opacity(0.2))
    @State var color2 = LinearGradient(gradient: Gradient(colors: [
        Color.black.opacity(0.5),
        Color.red.opacity(0.6)
    ]),
    startPoint: .top,
    endPoint: .bottom
    )
    
    var body: some View {
        /*TextField("Name:", text: $name)
            .font(.headline)
            .padding()
            .background(color)
            .cornerRadius(8)
            .padding()
            .onChange(of: name) { newValue in
                if newValue.count > 10 {
                    color = .red
                } else {
                    color = Color.gray.opacity(0.2)
                }
            }*/
        TextEditor(text: $name)
            .font(.headline)
            .padding()
            .background(color2)
            .cornerRadius(8)
            .scrollContentBackground(.hidden)
            .shadow(color: .green, radius: 5)
    }
}

#Preview {
    TextFieldPractice()
}
