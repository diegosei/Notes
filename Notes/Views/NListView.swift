//
//  NListView.swift
//  Notes
//
//  Created by Diego Seitler on 21/07/2025.
//

import SwiftUI

struct NListView: View {
    @EnvironmentObject var appInfo: AppInfo
    
    @State var showSheet: Bool = false
    @State var showDetails: Bool = false
    @State var selectedCard: NCard?
    
    var forFavorite: Bool = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach (forFavorite ? appInfo.favoriteCards : appInfo.cards) { card in
                    NCardView(card: card) {
                        appInfo.toggleFavorite(card: card)
                    }
                        .onTapGesture {
                            selectedCard = card
                            showDetails = true
                        }
                }
            }
            .listStyle(.plain)
            .sheet(isPresented: $showSheet) {
                NCreateNoteView() { card in
                    appInfo.createNote(card: card)
                    showSheet = false
                }
            }
            .navigationDestination(isPresented: $showDetails) {
                if let selectedCard {
                    NDetailView(card: selectedCard)
                }
            }
            .navigationTitle("Notes")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Button {
                    showSheet = true
                } label: { Image(systemName: "plus")
                    //
                }
            }
        }
    }
}

#Preview {
    NListView()
        .environmentObject(AppInfo())
}
