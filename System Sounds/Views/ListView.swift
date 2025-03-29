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
    let filterType: AudioType?
    @Query private var sounds: [Sound]
    
    init(isFavouriteView: Bool, searchText: String, sortOption: SortOption, sortOrder: SortOrder, filterType: AudioType?) {
        self.isFavouriteView = isFavouriteView
        self.searchText = searchText
        self.filterType = filterType
        
        let sortDescriptors: [SortDescriptor<Sound>] = switch sortOption {
            case .name:
                [SortDescriptor(\Sound.name, comparator: .localizedStandard, order: sortOrder.asFoundation), SortDescriptor(\Sound.number, order: .forward)]
            case .number:
                [SortDescriptor(\Sound.number, order: sortOrder.asFoundation)]
            case .soundType:
                [SortDescriptor(\Sound.audioType, order: sortOrder.asFoundation), SortDescriptor(\Sound.number, order: .forward)]
        }
        
        let predicate = #Predicate<Sound> {
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
        }
        _sounds = Query(filter: predicate, sort: sortDescriptors)
    }
    
    private var filteredSounds: [Sound] {
        sounds.filter {
            if filterType == nil {
                true
            } else if filterType == AudioType.isLoudSound {
                $0.isLoudSound
            } else {
                $0.audioType == filterType?.rawValue
            }
        }
    }
    
    var body: some View {
        if filteredSounds.isEmpty {
            unavailableView()
        } else {
            list()
        }
    }
    
    private func unavailableView() -> some View {
        Group {
            if searchText.isEmpty {
                ContentUnavailableView("You haven't added any favourites yet!", systemImage: "star.slash", description: Text("Swipe right on a sound to favourite it."))
            } else {
                ContentUnavailableView.search(text: searchText)
            }
        }
    }
    
    private func list() -> some View {
        List(filteredSounds) { sound in
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
    
    private func toggleFavourite(for sound: Sound) {
        sound.isFavourite.toggle()
    }
}

#Preview {
    @Previewable @State var isShowingSettings = false
    @Previewable @State var isShowingInfo = false
    NavigationStack {
        ListView(isFavouriteView: false, searchText: "", sortOption: .name, sortOrder: .forward, filterType: .soundOnly)
    }
}
