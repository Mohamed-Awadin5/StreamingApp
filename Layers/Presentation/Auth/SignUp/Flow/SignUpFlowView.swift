//
//  SignUpFlowView.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 25/04/2026.
//

import Foundation
import SwiftUI
import SwiftUI

struct SignUpFlowView: View {
    
    @ObservedObject var coordinator: SignUpCoordinator

    var body: some View {
            
            CreateProfileView {
                coordinator.goToPIN()
            }
            
            .navigationDestination(for: SignUpCoordinator.Route.self) { route in
                
                switch route {
                    
                case .createPIN:
                    CreatePINView {
                        coordinator.goToWelcome()
                    }
                    
                case .interests:
                    InterestsView {
                        coordinator.finish()
                    }
                    
              
                case .welcome:
                    WelcomeView{
                        coordinator.goToInterests()
                    }
                }
            }
        }
    }

