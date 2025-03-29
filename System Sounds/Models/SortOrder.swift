//
//  SortOrder.swift
//  System Sounds
//
//  Created by Rishi Jansari on 29/03/2025.
//

import Foundation

enum SortOrder: String, CaseIterable {
    case forward = "Ascending"
    case reverse = "Descending"
    
    var asFoundation: Foundation.SortOrder {
        switch self {
            case .forward:
                return .forward
            case .reverse:
                return .reverse
        }
    }
}

extension SortOrder {
    var systemImageName: String {
        switch self {
            case .forward:
                return "arrow.up"
            case .reverse:
                return "arrow.down"
        }
    }
}
