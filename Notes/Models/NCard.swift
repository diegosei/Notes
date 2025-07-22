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
}

enum NCardType {
    case small
    case medium
}
