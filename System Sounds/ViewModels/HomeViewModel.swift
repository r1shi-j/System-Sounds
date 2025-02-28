//
//  HomeViewModel.swift
//  System Sounds
//
//  Created by Rishi Jansari on 28/02/2025.
//

import SwiftUI

extension HomeView {
    @Observable
    class ViewModel {
        var searchText: String = ""
        var isShowingSettingsSheet = false
        
        @ObservationIgnored @AppStorage("settingsSheetSize")
        var settingsSheetSizeRaw: String = PresentationDetent.default.rawValue
        var settingsSheetSize: PresentationDetent = .default
        
        func changeSheetSize(oldValue: PresentationDetent, newValue: PresentationDetent) {
            settingsSheetSizeRaw = newValue.rawValue
        }
        func setSheetSize() {
            settingsSheetSize = PresentationDetent.from(rawValue: settingsSheetSizeRaw)
        }
    }
}
