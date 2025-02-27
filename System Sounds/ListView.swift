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
    @Query private var sounds: [Sound]
    
    init(isFavouriteView: Bool, searchText: String) {
        self.isFavouriteView = isFavouriteView
        self.searchText = searchText
        
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
            viewContent
                .navigationTitle("\(isFavouriteView ? "Favourite" : "System") Sounds")
        }
    }
    
    private var viewContent: some View {
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
    
    private var list: some View{
        List(sounds) { sound in
            Row(sound: sound)
                .swipeActions(allowsFullSwipe: true) {
                    Button {
                        sound.isFavourite.toggle()
                    } label: {
                        Label("Favourite", systemImage: "star")
                            .symbolVariant(sound.isFavourite ? .slash : .fill)
                    }
                    .tint(sound.isFavourite ? .red : .orange)
                }
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    NavigationStack {
        ListView(isFavouriteView: false, searchText: "")
    }
}
