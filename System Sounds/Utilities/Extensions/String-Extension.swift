//
//  String-Extension.swift
//  System Sounds
//
//  Created by Rishi Jansari on 28/02/2025.
//

import SwiftUI

extension String {
    static let defaultBlueHex = "007AFF"
    
    func hexToColor() -> Color {
        Color(hex: self)
    }
    
    func hexAsColorName() -> String {
        print(self, self.description)
        return switch self {
            case "FF3B30", "FF453A": "red"
            case "FF9500", "FF9F0A": "orange"
            case "FFCC00", "FFD60A": "yellow"
            case "34C759", "30D158": "green"
            case "00C7BE", "63E6E2": "mint"
            case "30B0C7", "40C8E0": "teal"
            case "32ADE6", "64D2FF": "cyan"
            case "007AFF", "0A84FF": "blue"
            case "5856D6", "5E5CE6": "indigo"
            case "AF52DE", "BF5AF2": "purple"
            case "FF2D55", "FF375F": "pink"
            case "A2845E", "AC8E68": "brown"
            case "8E8E93": "gray"
            default: "\(self): unknown"
        }
    }
    
    func selectedColorIndex() -> Int {
        Color.rainbowColors.firstIndex(of: self) ?? 0
    }
}
