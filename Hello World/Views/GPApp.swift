//
//  Hello_WorldApp.swift
//  Hello World
//
//  Created by Greg PFISTER on 17/02/2024.
//

import SwiftUI
import SwiftData

@main
struct GPApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            GPItem.self,
            GPSubItem.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            GPContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
