//
//  AppInfo.swift
//  Notes
//
//  Created by Diego Seitler on 23/07/2025.
//

import Foundation

class AppInfo: ObservableObject {
    @Published var cards: [NCard] = [
            NCard(title: "Comprar leche", text: "2 litros descremada", type: .small, toggle: true),
            NCard(title: "Hacer ejercicio", text: "30 minutos de cardio", type: .small, toggle: false),
            NCard(title: "Preparar presentación", text: "Slide deck para el cliente", type: .medium, toggle: true),
            NCard(title: "Ir al banco", text: "Depositar cheque", type: .small, toggle: true),
            NCard(title: "Llamar a mamá", text: "Cumpleaños de tía", type: .small, toggle: false),
            NCard(title: "Hacer mercado semanal", text: "Ver lista en Notes", type: .medium, toggle: false),
            NCard(title: "Pagar internet", text: "Vence el 15", type: .small, toggle: true),
            NCard(title: "Regar plantas", text: "Suculentas y orquídeas", type: .small, toggle: false),
            NCard(title: "Ir al taller", text: "Cambio de aceite del auto", type: .medium, toggle: true),
            NCard(title: "Enviar paquete", text: "Libros a Santiago", type: .small, toggle: true),
            NCard(title: "Sacar cita médico", text: "Control anual", type: .small, toggle: false),
            NCard(title: "Terminar reporte", text: "Estadísticas Q2", type: .medium, toggle: false),
            NCard(title: "Recoger ropa", text: "En la tintorería", type: .small, toggle: true),
            NCard(title: "Cargar metro", text: "20.000 pesos", type: .small, toggle: false),
            NCard(title: "Comprar regalo", text: "Aniversario de pareja", type: .medium, toggle: true),
            NCard(title: "Limpiar el garaje", text: "Donar lo que no se use", type: .medium, toggle: false),
            NCard(title: "Actualizar CV", text: "Añadir proyecto nuevo", type: .medium, toggle: true),
            NCard(title: "Planificar viaje", text: "Reservar hotel en Cartagena", type: .medium, toggle: false),
            NCard(title: "Revisar contrato", text: "Cláusulas de confidencialidad", type: .medium, toggle: true),
            NCard(title: "Hacer backup", text: "Fotos del teléfono", type: .medium, toggle: false)
        ]
    var favoriteCards: [NCard] {
        cards.filter{$0.toggle}
    }
    func createNote(card: NCard) {
        cards.append(card)
    }
    func toggleFavorite(card: NCard) {
        if let index = cards.firstIndex(where: { $0.id == card.id }) {
            cards[index].toggle.toggle()
        }
    }
}
