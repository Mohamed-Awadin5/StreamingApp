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
    @StateObject var appCoordinator : AppCoordinator = AppCoordinator()
    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(appCoordinator)
        }
    }
}
