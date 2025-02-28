//
//  SettingsViewModel.swift
//  System Sounds
//
//  Created by Rishi Jansari on 28/02/2025.
//

import SwiftData
import SwiftUI

extension SettingsView {
    @Observable
    class ViewModel {
        var modelContext: ModelContext?
        
        var isShowingConfirmationAlert = false
        var isShowingCompletionAlert = false
        var completionAlert: (title: String, message: String) = ("", "")
        
        func progressValue(_ color: String) -> Double {
            min((Double(color.selectedColorIndex()) + 0.5) / Double(Color.rainbowColors.count-1), 1.0)
        }
        
        func showConfirmationAlert() {
            isShowingConfirmationAlert = true
        }
        
        func resetCompletionAlertFields(oldValue: Bool, newValue: Bool) {
            if !newValue {
                completionAlert = ("", "")
            }
        }
        
        func removeAllFavourites() {
            do {
                let storedSounds = try modelContext?.fetch(FetchDescriptor<Sound>())
                storedSounds?.forEach {
                    $0.isFavourite = false
                }
                completionAlert.title = "All favourites removed!"
                completionAlert.message = ""
            } catch {
                completionAlert.title = "Error removing favourites."
                completionAlert.message = error.localizedDescription
            }
            isShowingConfirmationAlert = false
            isShowingCompletionAlert = true
        }
    }
}
