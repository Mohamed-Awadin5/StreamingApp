//
//  SettingsFlowView.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 03/05/2026.
//

import Foundation
import SwiftUI

struct SettingsView: View {
    
    let onProfile: () -> Void
    let onEditProfile: () -> Void
    let onChangePassword: () -> Void
    let onLogout: () -> Void
    
    var body: some View {
        
        VStack(spacing: 16) {
            
            // 🔥 Top Bar
            HStack {
                Text("Settings")
                    .font(.headline)
                Spacer()
            }
            .padding()
            
            // 🔥 List
            ScrollView {
                VStack(spacing: 12) {
                    
                    settingRow(title: "Profile", action: onProfile)
                    
                    settingRow(title: "Edit Profile", action: onEditProfile)
                    
                    settingRow(title: "Change Password", action: onChangePassword)
                    
                    Divider()
                    
                    Button(action: onLogout) {
                        Text("Logout")
                            .foregroundColor(.red)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.red.opacity(0.1))
                            .cornerRadius(10)
                    }
                }
                .padding()
            }
        }
    }
}
private func settingRow(title: String, action: @escaping () -> Void) -> some View {
    Button(action: action) {
        HStack {
            Text(title)
            Spacer()
            Image(systemName: "chevron.right")
        }
        .padding()
        .background(Color.gray.opacity(0.15))
        .cornerRadius(10)
    }
}
