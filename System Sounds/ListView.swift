//
//  ListView.swift
//  System Sounds
//
//  Created by Rishi Jansari on 27/02/2025.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationStack {
            List(Sound.allSounds) {
                Row(sound: $0)
            }
            .scrollIndicators(.hidden)
            .navigationTitle("System Sounds")
        }
    }
}

#Preview {
    NavigationStack {
        ListView()
    }
}
