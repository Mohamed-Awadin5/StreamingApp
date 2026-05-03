//
//  MainCoordinator.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 27/04/2026.
//

import Foundation
import Foundation
import SwiftUI

final class MainCoordinator: ObservableObject {
    
    
    enum Tab: Hashable {
        case home
        case search
        case favorites
        case downloads
        case settings
    }
    
    @Published var selectedTab: Tab = .home
    
    
    let homeCoordinator = HomeCoordinator()
    let searchCoordinator = SearchCoordinator()
    let favoritesCoordinator = FavoritesCoordinator()
    let downloadsCoordinator = DownloadsCoordinator()
    let settingsCoordinator = SettingsCoordinator()
    
    var onLogout: (() -> Void)?
    
    init() {
        setup()
    }
    
    private func setup() {
        
        settingsCoordinator.onLogout = { [weak self] in
            self?.onLogout?()
        }
    }
}
