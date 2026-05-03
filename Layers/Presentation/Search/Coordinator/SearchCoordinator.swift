//
//  SearchCoordinator.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 03/05/2026.
//

import Foundation
final class SearchCoordinator: BaseCoordinator<SearchCoordinator.Route> {
    
    enum Route: Hashable {
        case results(query: String)
        case movieDetails(id: String)
        case player(id: String)
    }
}
