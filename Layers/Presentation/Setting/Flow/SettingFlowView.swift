//
//  SettingFlowView.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 03/05/2026.
//

import Foundation
import SwiftUI
struct SettingsFlowView: View {
    
    @ObservedObject var coordinator: SettingsCoordinator
    
    var body: some View {
        
        NavigationStack(path: $coordinator.path) {
            
            SettingsView(
                onProfile: {
                    coordinator.push(.profile)
                },
                onEditProfile: {
                    coordinator.push(.editProfile)
                },
                onChangePassword: {
                    coordinator.push(.changePassword)
                },
                onLogout: {
                    coordinator.onLogout?()
                }
            )
            
            .navigationDestination(for: SettingsCoordinator.Route.self) { route in
                
                switch route {
                    
                case .profile:
                    Text("Profile Screen")
                    
                case .editProfile:
                    Text("Edit Profile Screen")
                    
                case .changePassword:
                    Text("Change Password Screen")
                }
            }
        }
    }
}
