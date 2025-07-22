//
//  NCardView.swift
//  Notes
//
//  Created by Diego Seitler on 21/07/2025.
//

import SwiftUI

struct NCardView: View {
    
    let card: NCard
    
    @ViewBuilder
    func CardSmallView() -> some View {
        HStack {
            Text(card.title)
                    .font(.headline)
                    .frame(width: 150, height: 40)
                    .background(Color.cyan.opacity(0.2))
                    .cornerRadius(8)
            Text(card.text)
                .font(.headline)
                .lineLimit(2)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            Image(systemName: "heart")
                .font(.system(size: 20))
                .padding(10)
                .foregroundStyle(.red)
                .bold()
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(16)
        .listRowSeparator(.hidden)
    }
    
    @ViewBuilder
    func CardMediumView() -> some View {
        VStack(spacing: 20) {
            VStack{
                HStack{
                    Spacer()
                    Image(systemName: "heart")
                        .font(.system(size: 20))
                        .padding(10)
                        .foregroundStyle(.red)
                        .bold()
                }
                Text(card.title)
                    .font(.headline)
                    .frame(width: 150, height: 40)
                    .background(Color.cyan.opacity(0.2))
                    .cornerRadius(8)
                Text(card.text)
                    .font(.headline)
                    .lineLimit(2)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(16)
        .listRowSeparator(.hidden)
    }
    
    var body: some View {
        switch card.type {
        case .small:
            CardSmallView()
        case .medium:
                CardMediumView()
        }
    }
}

#Preview {
    ScrollView{
        VStack {
            NCardView(card: NCard(title: "Bienvenido", text: "Descubre el mundo interactivo", type: .small, toggle: false))
            NCardView(card: NCard(title: "Aventura", text: "Explora nuevos horizontes", type: .small, toggle: false))
            NCardView(card: NCard(title: "Exploración", text: "El universo es el límite", type: .medium, toggle: false))
            NCardView(card: NCard(title: "Conocimiento", text: "Aprende algo nuevo", type: .small, toggle: false))
            NCardView(card: NCard(title: "Inspiración", text: "Ideas que cambian el mundo", type: .small, toggle: false))
            NCardView(card: NCard(title: "Tecnología", text: "Innovación para personas", type: .medium, toggle: false))
            NCardView(card: NCard(title: "Naturaleza", text: "Conecta con el ambiente", type: .small, toggle: false))
            NCardView(card: NCard(title: "Viajes", text: "Descubre culturas", type: .small, toggle: false))
            NCardView(card: NCard(title: "Ciencia", text: "Descifrando misterios", type: .medium, toggle: false))
            NCardView(card: NCard(title: "Cocina", text: "Sabores únicos", type: .small, toggle: false))
            NCardView(card: NCard(title: "Música", text: "Lenguaje universal", type: .small, toggle: false))
            NCardView(card: NCard(title: "Arte", text: "Creatividad sin límites", type: .medium, toggle: false))
            NCardView(card: NCard(title: "Deportes", text: "Trabajo en equipo", type: .small, toggle: false))
            NCardView(card: NCard(title: "Lectura", text: "Abre tu mente", type: .small, toggle: false))
            NCardView(card: NCard(title: "Innovación", text: "Soluciones futuras", type: .medium, toggle: false))
            NCardView(card: NCard(title: "Meditación", text: "Conexión interior", type: .small, toggle: false))
            NCardView(card: NCard(title: "Fotografía", text: "Captura momentos", type: .small, toggle: false))
            NCardView(card: NCard(title: "Diseño", text: "Forma y función", type: .medium, toggle: false))
            NCardView(card: NCard(title: "Historia", text: "Lecciones del pasado", type: .small, toggle: false))
            NCardView(card: NCard(title: "Fantasía", text: "Mundos imaginarios", type: .small, toggle: false))
            NCardView(card: NCard(title: "Filosofía", text: "Pensamiento profundo", type: .medium, toggle: false))
        }
    }
    
}
