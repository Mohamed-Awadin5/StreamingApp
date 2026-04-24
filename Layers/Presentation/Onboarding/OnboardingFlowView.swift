//
//  OnboardingFlowView.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 24/04/2026.
//

import Foundation
import SwiftUI
import SwiftUI

struct OnboardingFlowView: View {

    @StateObject private var coordinator = OnboardingCoordinator()

    var onFinish: () -> Void

    var body: some View {

        NavigationStack(path: $coordinator.path) {

            // 👇 أول شاشة (root)
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

                case .finish:
                    Text("Done")
                        .onAppear {
                            onFinish()
                        }
                }
            }
        }
    }
}
