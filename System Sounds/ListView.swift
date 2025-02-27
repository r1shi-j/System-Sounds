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
    @Query private var sounds: [Sound]
    
    init(isFavouriteView: Bool) {
        self.isFavouriteView = isFavouriteView
        
        let predicate = isFavouriteView ? #Predicate<Sound> { $0.isFavourite } : #Predicate<Sound> { _ in true }
        _sounds = Query(filter: predicate, sort: \Sound.number)
    }
    
    var body: some View {
        NavigationStack {
            viewContent
                .navigationTitle("\(isFavouriteView ? "Favourite" : "System") Sounds")
        }
    }
    
    private var viewContent: some View {
        Group {
            if isFavouriteView && sounds.isEmpty {
                ContentUnavailableView("You haven't added any favourites yet!", systemImage: "star.slash", description: Text("Swipe right on a sound to favourite it."))
            } else {
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
    }
}

#Preview {
    NavigationStack {
        ListView(isFavouriteView: false)
    }
}
