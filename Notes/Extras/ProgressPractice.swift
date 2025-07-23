//
//  ProgressPractice.swift
//  Notes
//
//  Created by Diego Seitler on 23/07/2025.
//

import SwiftUI

struct ProgressPractice: View {
    @State var progress: Double = 0.1
    
    var body: some View {
        VStack {
            Text("Cargando ...")
                .font(.headline)
            ProgressView(value: progress)
                .progressViewStyle(LinearProgressViewStyle())
                .padding()
            Button("Aumentar proceso") {
                withAnimation {
                    progress = min(progress + 0.1, 1)
                }
            }
            Button("Reset") {
                progress = 0.1
            }
            .padding()
        }
    }
}

#Preview {
    ProgressPractice()
}
