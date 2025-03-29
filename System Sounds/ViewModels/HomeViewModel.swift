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
        var isShowingSettingsSheet = false
        var isShowingInfoSheet = false
        var searchText: String = ""
        
        var selectedTab: Int {
            get {
                access(keyPath: \.selectedTab)
                return UserDefaults.standard.integer(forKey: "selectedTab")
            }
            set {
                withMutation(keyPath: \.selectedTab) {
                    UserDefaults.standard.setValue(newValue, forKey: "selectedTab")
                }
            }
        }
        
        var selectedSortOption: SortOption {
            get {
                access(keyPath: \.selectedSortOption)
                return SortOption(rawValue: UserDefaults.standard.string(forKey: "selectedSortOption") ?? SortOption.number.rawValue) ?? SortOption.number
            }
            set {
                withMutation(keyPath: \.selectedSortOption) {
                    UserDefaults.standard.setValue(newValue.rawValue, forKey: "selectedSortOption")
                }
            }
        }
        
        var selectedSortOrder: SortOrder {
            get {
                access(keyPath: \.selectedSortOrder)
                return SortOrder(rawValue: UserDefaults.standard.string(forKey: "selectedSortOrder") ?? SortOrder.forward.rawValue) ?? SortOrder.forward
            }
            set {
                withMutation(keyPath: \.selectedSortOrder) {
                    UserDefaults.standard.setValue(newValue.rawValue, forKey: "selectedSortOrder")
                }
            }
        }
        
        var selectedFilter: AudioType? {
            get {
                access(keyPath: \.selectedFilter)
                return AudioType(rawValue: UserDefaults.standard.string(forKey: "selectedFilter") ?? "nil") ?? nil
            }
            set {
                withMutation(keyPath: \.selectedFilter) {
                    UserDefaults.standard.setValue(newValue?.rawValue, forKey: "selectedFilter")
                }
            }
        }
        
        var settingsSheetSize: PresentationDetent {
            get {
                access(keyPath: \.settingsSheetSize)
                return PresentationDetent.from(rawValue: UserDefaults.standard.string(forKey: "settingsSheetSize") ?? PresentationDetent.default.rawValue)
            }
            set {
                withMutation(keyPath: \.settingsSheetSize) {
                    UserDefaults.standard.setValue(newValue.rawValue, forKey: "settingsSheetSize")
                }
            }
        }
    }
}
