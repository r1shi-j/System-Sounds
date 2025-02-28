//
//  System_SoundsApp.swift
//  System Sounds
//
//  Created by Rishi Jansari on 27/02/2025.
//

import SwiftData
import SwiftUI

@main
struct System_SoundsApp: App {
    private let container: ModelContainer
    
    private let seedDatabase: (Result<ModelContainer, any Error>) -> Void = { result in
        do {
            let container = try result.get()
            
            let descriptor = FetchDescriptor<Sound>()
            let existingSounds = try container.mainContext.fetchCount(descriptor)
            
            guard existingSounds == .zero else { return }
            
            for sound in Sound.sounds {
                container.mainContext.insert(sound)
            }
            
            try container.mainContext.save()
        } catch {
            fatalError("Failed to pre-seed database: \(error)")
        }
    }
    
    init() {
        do {
            container = try ModelContainer(for: Sound.self)
            seedDatabase(.success(container))
        } catch {
            seedDatabase(.failure(error))
            fatalError("Failed to create ModelContainer for Sound: \(error)")
        }
    }
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environment(\.customAccentColor, CustomColorStore())
        }
        .modelContainer(container)
    }
}
