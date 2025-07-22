//
//  PickersPractice.swift
//  Notes
//
//  Created by Diego Seitler on 22/07/2025.
//

import SwiftUI

struct PickersPractice: View {
    @State var date: Date = Date()
    @State var category: Int = 0
    @State var size: NCardType = .small
    var body: some View {
        /*DatePicker("date", selection: $date, displayedComponents: [.date])
            .datePickerStyle(.wheel)
            .padding()*/
        /*Picker("categories", selection: $category) {
            Text("0").tag(0)
            Text("1").tag(1)
            Text("2").tag(2)
        }
        .pickerStyle(.wheel)*/
        Picker("Tamaños", selection: $size){
            Label("Up 1.0", systemImage: "square.and.arrow.up").tag(NCardType.small)
            Label("Down 1.0", systemImage: "square.and.arrow.down").tag(NCardType.medium)
        }
    }
}

#Preview {
    PickersPractice()
}
