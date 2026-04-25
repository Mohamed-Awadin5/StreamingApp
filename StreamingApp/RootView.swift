//
//  ContentView.swift
//  StreamingApp
//
//  Created by mohamed awadin7 on 20/04/2026.
//

import SwiftUI


struct RootView: View {

    @EnvironmentObject var appCoordinator: AppCoordinator

    var body: some View {

        switch appCoordinator.currentRoute  {

        case .splash:
            SplashView()

        case .onboarding:
            OnboardingFlowView {
                appCoordinator.onBoardingFinished()
                      }
        case .auth:
            SplashView()
        case .main:
            SplashView()
        case .legal:
            LegalView {
                           appCoordinator.legalAccepted()
                       }
        }
    }
}
