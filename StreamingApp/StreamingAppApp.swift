//
//  StreamingAppApp.swift
//  StreamingApp
//
//  Created by mohamed awadin7 on 20/04/2026.
//

import SwiftUI

@main
struct StreamingAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
