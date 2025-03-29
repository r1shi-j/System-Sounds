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
    
    private func imageTintColor() -> Color {
        switch sound.audioType {
            case AudioType.hapticOnly.rawValue, AudioType.soundOnly.rawValue, AudioType.hapticAndSound.rawValue: .red
            case AudioType.soundToNone.rawValue, AudioType.hapticAndSoundToHaptic.rawValue: .blue
            default: .secondary
        }
    }
    
    private func soundTypeImage() -> some View {
        Image(systemName: (AudioType(rawValue: sound.audioType)?.systemImageName) ?? "questionmark")
            .tint(imageTintColor())
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
