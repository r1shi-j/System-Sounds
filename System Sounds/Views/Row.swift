//
//  Row.swift
//  System Sounds
//
//  Created by Rishi Jansari on 27/02/2025.
//

import SwiftUI

struct Row: View {
    let sound: Sound
    
    var body: some View {
        Button(action: sound.playSound) {
            LabeledContent {
                Text(sound.name)
            } label: {
                HStack {
                    Text(sound.number)
                        .foregroundStyle(Color(uiColor: .label))
                        .frame(maxWidth: 40, alignment: .leading)
                    soundTypeImage()
                    loudSoundImage()
                }
            }
        }
    }
    
    private func soundTypeImage() -> some View {
        switch (sound.audioType, sound.audioTypeSilentMode) {
            case (AudioType.haptic.rawValue, AudioType.haptic.rawValue):
                Image(systemName: "iphone.radiowaves.left.and.right")
                    .tint(.red)
                
            case (AudioType.sound.rawValue, AudioType.sound.rawValue):
                Image(systemName: "speaker.wave.2")
                    .tint(.red)
                
            case (AudioType.soundAndHaptic.rawValue, AudioType.soundAndHaptic.rawValue):
                Image(systemName: "bell")
                    .tint(.red)
                
            case (AudioType.sound.rawValue, AudioType.none.rawValue):
                Image(systemName: "speaker.wave.2")
                    .tint(.blue)
                
            case (AudioType.soundAndHaptic.rawValue, AudioType.haptic.rawValue):
                Image(systemName: "bell")
                    .tint(.blue)
                
            default:
                Image(systemName: "questionmark")
                    .tint(.secondary)
        }
    }
    
    private func loudSoundImage() -> some View {
        Group {
            if sound.isLoudSound {
                Image(systemName: "speaker.wave.3")
                    .symbolVariant(.fill)
                    .tint(.red)
            }
        }
    }
}
