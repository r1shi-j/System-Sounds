//
//  HomeView.swift
//  System Sounds
//
//  Created by Rishi Jansari on 27/02/2025.
//

import SwiftUI

struct HomeView: View {
    @State private var isShowingInfoSheet = false

    var body: some View {
        NavigationView {
            List(Sound.sounds) { sound in
                Row(sound: sound)
            }   
            .navigationTitle("System Sounds")
            .toolbar(content: toolbarContent)
            .sheet(isPresented: $isShowingInfoSheet) {
                InfoView()
            }
        }
    }
    
    private func toolbarContent() -> some ToolbarContent {
        Group {
            ToolbarItem(placement: .topBarLeading) {
                Button("Info", systemImage: "info.circle") {
                    isShowingInfoSheet.toggle()
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
