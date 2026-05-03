//
//  FavoritesFlowView.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 03/05/2026.
//

import Foundation
import SwiftUI
struct FavoritesFlowView: View {
    
    @ObservedObject var coordinator: FavoritesCoordinator
    
    var body: some View {
        
        NavigationStack(path: $coordinator.path) {
            
            FavoritesView { id in
                coordinator.push(.movieDetails(id: id))
            }
            
            .navigationDestination(for: FavoritesCoordinator.Route.self) { route in
                
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
