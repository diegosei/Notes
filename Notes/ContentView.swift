//
//  ContentView.swift
//  Notes
//
//  Created by Diego Seitler on 18/07/2025.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var appInfo = AppInfo()
    
    var body: some View {
        VStack {
            NListView()
                .environmentObject(appInfo)
        }
        
    }
}

#Preview {
    ContentView()
}
