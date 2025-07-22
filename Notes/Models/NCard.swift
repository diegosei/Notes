//
//  NCard.swift
//  Notes
//
//  Created by Diego Seitler on 21/07/2025.
//

import Foundation

struct NCard: Identifiable {
    let id = UUID()
    let title: String
    let text: String
    let type: NCardType
    let toggle: Bool
}

enum NCardType {
    case small
    case medium
}
