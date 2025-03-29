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
        NavigationStack {
            TabView(selection: $viewModel.selectedTab) {
                Tab(value: 0) {
                    ListView(
                        isFavouriteView: false,
                        searchText: viewModel.searchText,
                        sortOption: viewModel.selectedSortOption,
                        sortOrder: viewModel.selectedSortOrder,
                        filterType: viewModel.selectedFilter
                    )
                } label: {
                    Image(systemName: "music.note.list")
                }
                
                Tab(value: 1) {
                    ListView(
                        isFavouriteView: true,
                        searchText: viewModel.searchText,
                        sortOption: viewModel.selectedSortOption,
                        sortOrder: viewModel.selectedSortOrder,
                        filterType: viewModel.selectedFilter
                    )
                } label: {
                    Image(systemName: "airpodsmax")
                }
            }
            .navigationTitle("\(viewModel.selectedTab == 0 ? "System" : "Favourite") Sounds")
            .tint(customColor.color.hexToColor())
            .toolbar(content: toolbarContent)
            .sheet(isPresented: $viewModel.isShowingSettingsSheet) {
                SettingsView(settingsSheetSize: viewModel.settingsSheetSize)
                    .presentationDetents(PresentationDetent.allCases, selection: $viewModel.settingsSheetSize)
                    .sensoryFeedback(.selection, trigger: viewModel.settingsSheetSize)
            }
            .sheet(isPresented: $viewModel.isShowingInfoSheet) {
                InfoView()
                    .presentationDetents([.fraction(0.8)])
            }
        }
        .searchable(text: $viewModel.searchText, placement: .navigationBarDrawer, prompt: Text("Search for a sound..."))
    }
    
    private func toolbarContent() -> some ToolbarContent {
        Group {
            ToolbarItem(placement: .topBarLeading) {
                Button("Info", systemImage: "info.circle") {
                    viewModel.isShowingInfoSheet.toggle()
                }
                .tint(customColor.color.hexToColor())
            }
            
            ToolbarItem(placement: .topBarTrailing) {
                Menu {
                    Picker("Filter By", selection: Binding(
                        get: { viewModel.selectedFilter ?? AudioType.none },
                        set: { viewModel.selectedFilter = $0 == AudioType.none ? nil : $0 }
                    )) {
                        ForEach(AudioType.allCases, id: \.self) { option in
                            if option == .none {
                                Text("None")
                            } else {
                                Label(option.rawValue, systemImage: option.systemImageName)
                            }
                        }
                    }
                } label: {
                    Label("Filter", systemImage: "line.3.horizontal.decrease")
                }
                .tint(customColor.color.hexToColor())
            }
            
            ToolbarItem(placement: .topBarTrailing) {
                Menu {
                    Picker("Sort By", selection: $viewModel.selectedSortOption) {
                        ForEach(SortOption.allCases, id: \.self) { option in
                            Label(option.rawValue, systemImage: option.systemImageName)
                        }
                    }
                    Picker("Sort Order", selection: $viewModel.selectedSortOrder) {
                        ForEach(SortOrder.allCases, id: \.self) { option in
                            Label(option.rawValue, systemImage: option.systemImageName)
                        }
                    }
                } label: {
                    Label("Sort", systemImage: "arrow.up.arrow.down")
                }
                .tint(customColor.color.hexToColor())
            }
            
            ToolbarItem(placement: .topBarTrailing) {
                Button("Settings", systemImage: "gearshape") {
                    viewModel.isShowingSettingsSheet.toggle()
                }
                .tint(customColor.color.hexToColor())
            }
        }
    }
}

#Preview {
    HomeView()
}
