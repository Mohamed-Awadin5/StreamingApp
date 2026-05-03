//
//  DownloadsCoordinator.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 03/05/2026.
//

import Foundation
final class DownloadsCoordinator: BaseCoordinator<DownloadsCoordinator.Route> {
    
    enum Route: Hashable {
        case movieDetails(id: String)
        case player(id: String)
    }
}
