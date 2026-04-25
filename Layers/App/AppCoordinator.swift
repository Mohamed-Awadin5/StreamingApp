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
    
   var isFirstLaunch : Bool {
        !UserDefaults.standard.bool(forKey: "isFirstLaunch")
    }
   var isLoggedIn : Bool {
        UserDefaults.standard.string(forKey: "isToken") != nil
    }
    func start() {
        if isFirstLaunch {
            
            currentRoute = .onboarding
            UserDefaults.standard.set(false, forKey: "isFirstLaunch")// eill be true after finishing onboarding screens
        } else if isLoggedIn {
            currentRoute = .main
        } else {
            currentRoute = .auth
        }
    }
    func onBoardingFinished() {
        currentRoute = .legal
    }
    func legalAccepted() {
        UserDefaults.standard.set(true, forKey: "hasLaunchedBefore")
        if isLoggedIn {
                   currentRoute = .main
               } else {
                   currentRoute = .auth
               }

    }
    
}
