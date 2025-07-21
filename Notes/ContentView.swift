//
//  ContentView.swift
//  Notes
//
//  Created by Diego Seitler on 18/07/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
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
                .padding(5)
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
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        /*
        VStack(spacing: 20) {
                    ZStack() {
                        Rectangle()
                            .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.gray.opacity(0.2))
                            .cornerRadius(20)
                        
                        HStack(spacing: 20) {
                            ZStack() {
                                Rectangle()
                                    .frame(width: 130,height: 40)
                                    .foregroundColor(.blue.opacity(0.2))
                                    .cornerRadius(10)
                                Text("Hola Mundo").bold()
                            }
                            
                            Text("Esto es una card pequeña, saludos")
                            
                            Image(systemName: "heart").foregroundColor(.red)
                        }
                    }
                    
                    ZStack() {
                        Rectangle()
                            .frame(height: 150)
                            .foregroundColor(.gray.opacity(0.2))
                            .cornerRadius(20)
                        
                        VStack() {
                            VStack() {
                                HStack {
                                    Spacer()
                                    Image(systemName: "heart")
                                        .foregroundColor(.red)
                                        .padding(.trailing, 10) //
                                        }
                                ZStack() {
                                    Rectangle()
                                        .frame(width: 130,height: 40)
                                        .foregroundColor(.blue.opacity(0.2))
                                        .cornerRadius(10)
                                    Text("Hola Mundo").bold()
                                }
                            }
                            
                            
                            Text("Esto es una card pequeña, saludos")
                            
                        }
                    }
                }*/
    }
    
}

#Preview {
    ContentView()
}
