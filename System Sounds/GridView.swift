//
//  GridView.swift
//  System Sounds
//
//  Created by Rishi Jansari on 27/02/2025.
//

import SwiftUI

struct GridView: View {
    @State private var selectedSound: Sound?
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach(Sound.specificSounds) { sound in
                    Button(action: sound.playSound) {
                        LabeledContent {
                            Text(sound.name)
                        } label: {
                            Text(String(sound.number))
                                .foregroundStyle(.black)
                        }
                    }
                    .buttonStyle(.bordered)
                    .background(.gray.opacity(0.05).mix(with: .green, by: selectedSound == sound ? 0.5 : 0))
                    .clipShape(.rect(cornerRadius: 8))
                    .padding(2)
                    .onLongPressGesture { } onPressingChanged: { isPressing in
                        withAnimation(.easeOut) {
                            selectedSound = isPressing ? sound : nil
                        }
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    GridView()
}
