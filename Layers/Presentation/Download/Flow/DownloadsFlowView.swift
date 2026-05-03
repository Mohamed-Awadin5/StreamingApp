//
//  DownloadsFlowView.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 03/05/2026.
//

import Foundation
import SwiftUI
struct DownloadsFlowView: View {
    
    @ObservedObject var coordinator: DownloadsCoordinator
    
    var body: some View {
        
        NavigationStack(path: $coordinator.path) {
            
            DownloadsView { id in
                coordinator.push(.movieDetails(id: id))
            }
            
            .navigationDestination(for: DownloadsCoordinator.Route.self) { route in
                
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
