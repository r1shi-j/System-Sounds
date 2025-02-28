//
//  ColorStore.swift
//  System Sounds
//
//  Created by Rishi Jansari on 28/02/2025.
//

import SwiftUI

@Observable
class CustomColorStore {
    @ObservationIgnored @AppStorage("customColor") var color: String = .defaultBlueHex
}

extension EnvironmentValues {
    @Entry var customAccentColor: CustomColorStore = CustomColorStore()
}
