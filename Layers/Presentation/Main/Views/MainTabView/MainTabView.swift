//
//  MainTabView.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 27/04/2026.
//

import Foundation
import SwiftUI

struct MainTabView: View {
    
    @ObservedObject var coordinator: MainCoordinator
    
    var body: some View {
        
        TabView(selection: $coordinator.selectedTab) {
            
            HomeFlowView(coordinator: coordinator.homeCoordinator)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(MainCoordinator.Tab.home)
            
            SearchFlowView(coordinator: coordinator.searchCoordinator)
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
                .tag(MainCoordinator.Tab.search)
            
            FavoritesFlowView(coordinator: coordinator.favoritesCoordinator)
                .tabItem {
                    Label("Favorites", systemImage: "heart")
                }
                .tag(MainCoordinator.Tab.favorites)
            
            DownloadsFlowView(coordinator: coordinator.downloadsCoordinator)
                .tabItem {
                    Label("Downloads", systemImage: "arrow.down.circle")
                }
                .tag(MainCoordinator.Tab.downloads)
            
            SettingsFlowView(coordinator: coordinator.settingsCoordinator)
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
                .tag(MainCoordinator.Tab.settings)
        }
    }
}
