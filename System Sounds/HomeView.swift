//
//  HomeView.swift
//  System Sounds
//
//  Created by Rishi Jansari on 27/02/2025.
//

import SwiftUI

struct HomeView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        TabView {
            Tab {
                ListView(isFavouriteView: false, searchText: searchText)
            } label: {
                Image(systemName: "music.note.list")
            }
            
            Tab {
                ListView(isFavouriteView: true, searchText: searchText)
            } label: {
                Image(systemName: "airpodsmax")
            }
        }
        .searchable(text: $searchText, placement: .navigationBarDrawer, prompt: Text("Search for a sound..."))
    }
}

#Preview {
    HomeView()
}
