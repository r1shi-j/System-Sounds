//
//  HomeView.swift
//  System Sounds
//
//  Created by Rishi Jansari on 27/02/2025.
//

import SwiftUI

struct HomeView: View {
    @Environment(\.customAccentColor) private var customColor
    
    @State private var viewModel = ViewModel()
    
    var body: some View {
        TabView {
            Tab("", systemImage: "music.note.list") {
                ListView(isFavouriteView: false, searchText: viewModel.searchText, isShowingSettingsSheet: $viewModel.isShowingSettingsSheet, isShowingInfoSheet: $viewModel.isShowingInfoSheet)
            }
            
            Tab("", systemImage: "airpodsmax") {
                ListView(isFavouriteView: true, searchText: viewModel.searchText, isShowingSettingsSheet: $viewModel.isShowingSettingsSheet, isShowingInfoSheet: $viewModel.isShowingInfoSheet)
            }
        }
        .tint(customColor.color.hexToColor())
        .searchable(text: $viewModel.searchText, placement: .navigationBarDrawer, prompt: Text("Search for a sound..."))
        .sheet(isPresented: $viewModel.isShowingSettingsSheet) {
            SettingsView(settingsSheetSize: viewModel.settingsSheetSize)
                .presentationDetents(PresentationDetent.allCases, selection: $viewModel.settingsSheetSize)
                .sensoryFeedback(.selection, trigger: viewModel.settingsSheetSize)
        }
        .sheet(isPresented: $viewModel.isShowingInfoSheet) {
            InfoView()
                .presentationDetents([.fraction(0.8)])
        }
        .onAppear(perform: viewModel.setSheetSize)
        .onChange(of: viewModel.settingsSheetSize, viewModel.changeSheetSize)
    }
}

#Preview {
    HomeView()
}
