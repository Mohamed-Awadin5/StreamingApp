//
//  SearchFlowView.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 03/05/2026.
//

import Foundation
import SwiftUI
struct SearchFlowView: View {
    
    @ObservedObject var coordinator: SearchCoordinator
    
    var body: some View {
        
        NavigationStack(path: $coordinator.path) {
            
            SearchView { query in
                coordinator.push(.results(query: query))
            }
            
            .navigationDestination(for: SearchCoordinator.Route.self) { route in
                
                switch route {
                    
                case .results(let query):
                    SearchResultsView { id in
                        coordinator.push(.movieDetails(id: id))
                    }
                    
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
