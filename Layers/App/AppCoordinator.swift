//
//  AppCoordinator.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 24/04/2026.
//

import Foundation
final class AppCoordinator: ObservableObject {
    enum Route {
            case splash
            case onboarding
            case legal
            case auth
            case main
        }
@Published var currentRoute: Route = .splash
    let onboardingCoordinator = OnboardingCoordinator()
    let legalCoordinator = LegalCoordinator()
     let authCoordinator = AuthCoordinator()
     let mainCoordinator = MainCoordinator()
    init() {
          setupCallbacks()
      }
      
      private func setupCallbacks() {
          
          onboardingCoordinator.onFinish = { [weak self] in
              self?.currentRoute = .legal
          }
          
          legalCoordinator.onAccept = { [weak self] in
              self?.currentRoute = .auth
          }
          
          authCoordinator.onAuthenticated = { [weak self] in
              self?.currentRoute = .main
          }
          
          mainCoordinator.onLogout = { [weak self] in
            self?.currentRoute = .auth
         }
      }
    func routeAfterSplash() {
        
        let isFirstLaunch = true   // replace later
        let isLoggedIn = false     // replace later
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            
            if isFirstLaunch {
                self.currentRoute = .onboarding
            } else if isLoggedIn {
                self.currentRoute = .main
            } else {
                self.currentRoute = .auth
            }
        }
    }
    
}
