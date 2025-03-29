//
//  SortOption.swift
//  System Sounds
//
//  Created by Rishi Jansari on 29/03/2025.
//

enum SortOption: String, CaseIterable {
    case name = "Name"
    case number = "Number"
    case soundType = "Sound Type"
}

extension SortOption {
    var systemImageName: String {
        switch self {
            case .name:
                return "textformat.abc"
            case .number:
                return "textformat.123"
            case .soundType:
                return "speaker.wave.2"
        }
    }
}
