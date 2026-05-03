//
//  HomeFlowView.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 03/05/2026.
//

import Foundation
import SwiftUI
struct HomeFlowView: View {
    
    @ObservedObject var coordinator: HomeCoordinator
    var onSearchTap: () -> Void
    
    var body: some View {
        
        NavigationStack(path: $coordinator.path) {
            
            HomeView(
                onMovieTap: { id in
                    coordinator.push(.movieDetails(id: id))
                },
                onSearchTap: onSearchTap, // 🔥 يغير التاب
                onProfileTap: {
                }
            )
            
            .navigationDestination(for: HomeCoordinator.Route.self) { route in
                
                switch route {
                    
                case .movieDetails(let id):
                    MovieDetailsView {
                        coordinator.push(.player(id: id))
                    }
                    
                case .player:
                    PlayerView()
                }
            }
        }
    }
}
