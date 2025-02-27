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
                Text(sound.number)
                    .foregroundStyle(Color(uiColor: .label))
            }
        }
    }
}
