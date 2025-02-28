//
//  PresentationDetent-Extension.swift
//  System Sounds
//
//  Created by Rishi Jansari on 28/02/2025.
//

import SwiftUI

extension PresentationDetent {
    static var `default`: Self { .large }
    static var allCases: Set<Self> { [.large, .medium, .fraction(0.3)] }
    
    var rawValue: String {
        switch self {
            case .large: "large"
            case .medium: "medium"
            default: "fraction"
        }
    }
    
    static func from(rawValue: String) -> PresentationDetent {
        switch rawValue {
            case "large": .large
            case "medium": .medium
            default: .fraction(0.3)
        }
    }
}
