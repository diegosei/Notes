//
//  ContentView.swift
//  Notes
//
//  Created by Diego Seitler on 18/07/2025.
//

import SwiftUI

struct ContentView: View {
    
    @ViewBuilder
    func CardSmallView() -> some View {
        HStack {
                Text("Hello World!")
                    .multilineTextAlignment(.leading)
                    .font(.headline)
                    .frame(width: 120, height: 40)
                    .background(Color.cyan.opacity(0.2))
                    .cornerRadius(8)
            Text("This is an example of a preview.")
                .font(.headline)
            Image(systemName: "heart")
                .font(.system(size: 20))
                .padding(10)
                .foregroundStyle(.red)
                .bold()
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(16)
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
                Text("Hello World!")
                    .font(.headline)
                    .frame(width: 120, height: 40)
                    .background(Color.cyan.opacity(0.2))
                    .cornerRadius(8)
                Text("This is an example of a preview.")
                    .font(.headline)
            }
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(16)
    }
    
    var body: some View {
        
        ScrollView(.vertical) {
            VStack {
                ForEach (0..<50) { _ in
                    CardSmallView()
                    CardSmallView()
                    CardMediumView()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
