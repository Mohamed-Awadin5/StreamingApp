//
//  SettingCoordinator.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 03/05/2026.
//

import Foundation
final class SettingsCoordinator: BaseCoordinator<SettingsCoordinator.Route> {
    
    enum Route: Hashable {
        case profile
        case editProfile
        case changePassword
    }
    
    var onLogout: (() -> Void)?
}
