//
//  InfoView.swift
//  System Sounds
//
//  Created by Rishi Jansari on 28/03/2025.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        Form {
            Section("Icon Info") {
                VStack(alignment: .leading) {
                    Image(systemName: "iphone.radiowaves.left.and.right")
                        .foregroundStyle(.red)
                        .padding(.vertical, 2)
                    
                    Text("This means the sound is a ") +
                    Text("haptic").bold() +
                    Text(" in both normal and silent mode.")
                }
                
                VStack(alignment: .leading) {
                    Image(systemName: "speaker.wave.2")
                        .foregroundStyle(.red)
                        .padding(.vertical, 2)
                    
                    Text("This means the sound is a ") +
                    Text("sound").bold() +
                    Text(" in both normal and silent mode.")
                }
                
                VStack(alignment: .leading) {
                    Image(systemName: "bell")
                        .foregroundStyle(.red)
                        .padding(.vertical, 2)
                    
                    Text("This means the sound is a ") +
                    Text("sound and haptic").bold() +
                    Text(" in both normal and silent mode.")
                }
                
                VStack(alignment: .leading) {
                    Image(systemName: "speaker.wave.2")
                        .foregroundStyle(.blue)
                        .padding(.vertical, 2)
                    
                    Text("This means the sound is a ") +
                    Text("sound").bold() +
                    Text(" in normal mode, but ") +
                    Text("nothing").bold() +
                    Text(" in silent mode.")
                }
                
                VStack(alignment: .leading) {
                    Image(systemName: "bell")
                        .foregroundStyle(.blue)
                        .padding(.vertical, 2)
                    
                    Text("This means the sound is a ") +
                    Text("sound and haptic").bold() +
                    Text(" in normal mode, but only a ") +
                    Text("haptic").bold() +
                    Text(" in silent mode.")
                }
                
                VStack(alignment: .leading) {
                    Image(systemName: "speaker.wave.3")
                        .symbolVariant(.fill)
                        .foregroundStyle(.red)
                        .padding(.vertical, 2)
                    
                    Text("This means the sound is ") +
                    Text("loud").bold() +
                    Text(".")
                }
            }
        }
    }
}
