//
//  TogglePractice.swift
//  Notes
//
//  Created by Diego Seitler on 22/07/2025.
//

import SwiftUI

struct TogglePractice: View {
    @State var age: Double = 18
    @State var isAdult: Bool = false
    
    var body: some View {
        VStack {
            Text("Age: \(age.formatted(.number))")
            Slider(value: $age, in: 1...100, step: 1)
            
            Toggle("Is Adult?", isOn: $isAdult)
        }
        .padding()
        .onChange(of: isAdult) { newValue in
            if newValue == true {
                age = 18
            } else {
                age = 17
            }
        }
        /*.onChange(of: age) { newValue in
            if newValue >= 18 {
                isAdult = true
            } else {
                isAdult = false
            }
        }*/
    }
}

#Preview {
    TogglePractice()
}
