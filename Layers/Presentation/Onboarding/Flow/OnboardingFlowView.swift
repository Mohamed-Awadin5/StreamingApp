//
//  OnboardingFlowView.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 24/04/2026.
//

import Foundation
import SwiftUI

struct OnboardingFlowView: View {

    @ObservedObject var coordinator: OnboardingCoordinator


    var body: some View {

        NavigationStack(path: $coordinator.path) {

            OnboardingScreen1 {
                coordinator.next(from: 1)
            }

            .navigationDestination(for: OnboardingCoordinator.Route.self) { route in

                switch route {

                case .page2:
                    OnboardingScreen2 {
                        coordinator.next(from: 2)
                    }

                case .page3:
                    OnboardingScreen3 {
                        coordinator.next(from: 3)
                    }

                }
            }
        }
    }
}
