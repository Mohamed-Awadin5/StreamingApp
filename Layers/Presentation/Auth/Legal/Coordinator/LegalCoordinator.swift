//
//  LegalCoordinator.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 26/04/2026.
//

import Foundation

class LegalCoordinator: BaseCoordinator<LegalCoordinator.Route> {
    
    enum Route: Hashable {
        case policies
    }
    
    var onAccept: (() -> Void)?
    
    func accept() {
        onAccept?()
    }
}
