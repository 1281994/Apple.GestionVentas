//
//  Apple_BimboNicaraguaApp.swift
//  Apple.BimboNicaragua
//
//  Created by Alex on 15/10/24.
//

import SwiftUI
import SwiftData

@main
struct Apple_BimboNicaraguaApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
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
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
