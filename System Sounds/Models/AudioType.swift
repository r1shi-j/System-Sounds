//
//  AudioType.swift
//  System Sounds
//
//  Created by Rishi Jansari on 28/03/2025.
//

import Foundation

enum AudioType: String, CaseIterable {
    case none = "None"
    case hapticOnly = "Haptic only"
    case soundOnly = "Sound only"
    case hapticAndSound = "Haptic and Sound"
    case soundToNone = "Sound to None"
    case hapticAndSoundToHaptic = "Haptic and Sound to Haptic"
    case isLoudSound = "Loud"
}

extension AudioType {
    var systemImageName: String {
        switch self {
            case .none:
                ""
            case .hapticOnly:
                "iphone.radiowaves.left.and.right"
            case .soundOnly:
                "speaker.wave.2"
            case .hapticAndSound:
                "bell"
            case .soundToNone:
                "speaker.wave.2"
            case .hapticAndSoundToHaptic:
                "bell"
            case .isLoudSound:
                "speaker.wave.3.fill"
        }
    }
}
