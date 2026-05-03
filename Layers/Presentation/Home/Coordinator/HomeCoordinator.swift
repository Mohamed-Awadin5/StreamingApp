//
//  HomeCoordinator.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 03/05/2026.
//

import Foundation
final class HomeCoordinator: BaseCoordinator<HomeCoordinator.Route> {
    
    enum Route: Hashable {
        case movieDetails(id: String)
        case player(id: String)
    }
}
