//
//  NCreateNoteView.swift
//  Notes
//
//  Created by Diego Seitler on 22/07/2025.
//

import SwiftUI

struct NCreateNoteView: View {
    @State var title: String = ""
    @State var editor: String = ""
    @State var size: NCardType = .small
    @State var isFavorite: Bool = false
    
    func onTap() {
        let card = NCard(title: title, text: editor, type: size)
        print("Nota: \(card)")
    }
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Crear Nueva Nota")
                    .font(.largeTitle)
                    .bold()
                TextField("Titulo:", text: $title)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(16)
                TextEditor(text: $editor)
                    .frame(height: 150)
                    .scrollContentBackground(.hidden)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(16)
                HStack {
                    Text("Tamaño")
                        .padding()
                    Spacer()
                    Picker("Tamaños", selection: $size) {
                        Text("Pequeño").tag(NCardType.small)
                        Text("Mediano").tag(NCardType.medium)
                    }
                }
                Toggle("Marcar como Favorito", isOn: $isFavorite)
                    .padding()
                    .font(.headline)
                    .onChange(of: isFavorite){ newValue in
                        if newValue == true {
                            isFavorite = true
                        } else {
                            isFavorite = false
                        }
                    }
                Button {
                    onTap()
                } label: {
                    Text("Guardar Nota")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(16)
                        .foregroundStyle(Color.white)
                }
            }
            .padding()
            .background(Color.white)
            .cornerRadius(16)
            .padding()
            .background(Color.cyan.opacity(0.2))
        }
    }
}

#Preview {
    NCreateNoteView()
}
