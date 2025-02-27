//
//  HomeView.swift
//  System Sounds
//
//  Created by Rishi Jansari on 27/02/2025.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            Tab {
                ListView()
            } label: {
                Image(systemName: "music.note.list")
            }
            
            Tab {
                GridView()
            } label: {
                Image(systemName: "airpodsmax")
            }
        }
    }
}

#Preview {
    HomeView()
}
