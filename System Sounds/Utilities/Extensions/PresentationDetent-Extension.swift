//
//  PresentationDetent-Extension.swift
//  System Sounds
//
//  Created by Rishi Jansari on 28/02/2025.
//

import SwiftUI

extension PresentationDetent {
    static var `default`: Self { .large }
    
    var rawValue: String {
        switch self {
            case .large: return "large"
            case .medium: return "medium"
            case .fraction(0.25): return "fraction:0.25"
            default: return "large"
        }
    }
    
    static func from(rawValue: String) -> PresentationDetent {
        switch rawValue {
            case "large": return .large
            case "medium": return .medium
            case "fraction:0.25": return .fraction(0.25)
            default: return .default
        }
    }
}
