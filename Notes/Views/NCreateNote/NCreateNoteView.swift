//
//  NCreateNoteView.swift
//  Notes
//
//  Created by Diego Seitler on 22/07/2025.
//

import SwiftUI

struct NCreateNoteView: View {
    @StateObject var viewModel: NCreateNoteViewModel = NCreateNoteViewModel()
    
    var onNoteCreated: (NCard) -> Void = { _ in }
    
    func onTap() {
        let card = viewModel.createNote()
        print("Nota: \(card)")
        onNoteCreated(card)
    }
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Crear Nueva Nota")
                    .font(.largeTitle)
                    .bold()
                    .padding(.bottom, 10)
                NTextField(placeHolder: "Titulo:", text: $viewModel.title)
                NTextEditor(placeHolder: "", text: $viewModel.editor)
                HStack {
                    Text("Tamaño")
                        .padding()
                    Spacer()
                    Picker("Tamaños", selection: $viewModel.size) {
                        Text("Pequeño").tag(NCardType.small)
                        Text("Mediano").tag(NCardType.medium)
                    }
                }
                .padding()
                Toggle("Marcar como Favorito", isOn: $viewModel.isFavorite)
                    .padding()
                    .font(.headline)
                    .onChange(of: viewModel.isFavorite){ newValue in
                        if newValue == true {
                            viewModel.isFavorite = true
                        } else {
                            viewModel.isFavorite = false
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
                .padding(.top, 20)
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
