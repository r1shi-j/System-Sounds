//
//  ListView.swift
//  System Sounds
//
//  Created by Rishi Jansari on 27/02/2025.
//

import SwiftData
import SwiftUI

struct ListView: View {
    let isFavouriteView: Bool
    let searchText: String
    var isShowingSettingsSheet: Binding<Bool>
    @Query private var sounds: [Sound]
    
    init(isFavouriteView: Bool, searchText: String, isShowingSettingsSheet: Binding<Bool>) {
        self.isFavouriteView = isFavouriteView
        self.searchText = searchText
        self.isShowingSettingsSheet = isShowingSettingsSheet
        
        _sounds = Query(filter: #Predicate {
            if isFavouriteView {
                if searchText.isEmpty {
                    return $0.isFavourite
                } else {
                    return $0.isFavourite && ($0.number.localizedStandardContains(searchText) || $0.name.localizedStandardContains(searchText))
                }
            } else {
                if searchText.isEmpty {
                    return true
                } else {
                    return $0.number.localizedStandardContains(searchText) || $0.name.localizedStandardContains(searchText)
                }
            }
        }, sort: \Sound.number)
    }
    
    var body: some View {
        NavigationStack {
            content
                .navigationTitle("\(isFavouriteView ? "Favourite" : "System") Sounds")
                .toolbar { ToolbarItem(placement: .topBarTrailing) { settingsButton } }
        }
    }
    
    private var content: some View {
        Group {
            if sounds.isEmpty {
                unavailableView
            } else {
                list
            }
        }
    }
    
    private var unavailableView: some View {
        Group {
            if searchText.isEmpty {
                ContentUnavailableView("You haven't added any favourites yet!", systemImage: "star.slash", description: Text("Swipe right on a sound to favourite it."))
            } else {
                ContentUnavailableView.search(text: searchText)
            }
        }
    }
    
    private var list: some View {
        List(sounds) { sound in
            Row(sound: sound)
                .swipeActions(allowsFullSwipe: true) {
                    Button {
                        toggleFavourite(for: sound)
                    } label: {
                        Label("Favourite", systemImage: "star")
                            .symbolVariant(sound.isFavourite ? .slash : .fill)
                    }
                    .tint(sound.isFavourite ? .red : .orange)
                }
                .sensoryFeedback(trigger: sound.isFavourite) { _, newValue in
                    newValue ? .success : .error
                }
        }
    }
    
    private var settingsButton: some View {
        Button("Settings", systemImage: "gearshape.fill") {
            isShowingSettingsSheet.wrappedValue.toggle()
        }
    }
    
    private func toggleFavourite(for sound: Sound) {
        sound.isFavourite.toggle()
    }
}

#Preview {
    @Previewable @State var isShowing = false
    NavigationStack {
        ListView(isFavouriteView: false, searchText: "", isShowingSettingsSheet: $isShowing)
    }
}
