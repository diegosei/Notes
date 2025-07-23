//
//  AlertPratice.swift
//  Notes
//
//  Created by Diego Seitler on 22/07/2025.
//

import SwiftUI

struct AlertPratice: View {
    @State var showSheet: Bool = false
    var body: some View {
        VStack {
            Button("Show Sheet") {
                showSheet = true
            }
        }
        .sheet(isPresented: $showSheet) {
            NCreateNoteView()
        }
    }
}

#Preview {
    AlertPratice()
}
