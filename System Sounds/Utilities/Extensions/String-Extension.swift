//
//  String-Extension.swift
//  System Sounds
//
//  Created by Rishi Jansari on 28/02/2025.
//

import SwiftUI

extension String {
    static let defaultBlueHex = Color.default
    
    func hexToColor() -> Color {
        Color(hex: self)
    }
    
    func hexAsColorName() -> String {
        switch self {
            case "FF3B30": "red"
            case "FF9500": "orange"
            case "FFCC00": "yellow"
            case "34C759": "green"
            case "00C7BE": "mint"
            case "30B0C7": "teal"
            case "32ADE6": "cyan"
            case "007AFF": "blue"
            case "5856D6": "indigo"
            case "AF52DE": "purple"
            case "FF2D55": "pink"
            case "A2845E": "brown"
            case "8E8E93": "gray"
            case "000000": "black"
            default: "\(self): unknown"
        }
    }
    
    func selectedColorIndex() -> Int {
        Color.rainbowColors.firstIndex(of: self) ?? 0
    }
}
