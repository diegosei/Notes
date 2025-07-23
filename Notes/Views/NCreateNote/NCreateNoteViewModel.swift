//
//  NCreateNoteViewModel.swift
//  Notes
//
//  Created by Diego Seitler on 23/07/2025.
//

import Foundation

class NCreateNoteViewModel: ObservableObject {
    @Published var title: String = ""
    @Published var editor: String = ""
    @Published var size: NCardType = .small
    @Published var isFavorite: Bool = false
    
    func createNote() -> NCard {
        let card = NCard(title: title, text: editor, type: size, toggle: isFavorite)
        return card
    }
    
}
