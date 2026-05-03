//
//  Coordinator.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 03/05/2026.
//

import Foundation
final class FavoritesCoordinator: BaseCoordinator<FavoritesCoordinator.Route> {
    
    enum Route: Hashable {
        case movieDetails(id: String)
        case player(id: String)
    }
}
