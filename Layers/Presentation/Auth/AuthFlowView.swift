//
//  AuthFlowView.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 25/04/2026.
//

import SwiftUI

struct AuthFlowView: View {

    @ObservedObject  var coordinator :AuthCoordinator


    var body: some View {

        NavigationStack(path: $coordinator.path) {

            SignInView(
                onSignUp: {
                    coordinator.push(.signUp)
                },
                onForgotPassword: {
                    coordinator.push(.forgetPassword)

                },
                onLoginSuccess: {
                    coordinator.onAuthenticated?()
                }
            )

            .navigationDestination(for: AuthCoordinator.Route.self) { route in

                switch route {
                case .signUp:
                    
                        SignUpFlowView(coordinator: coordinator.signUpCoordinator)

            
                case .forgetPassword:
                
                    ForgotPasswordFlowView(coordinator: coordinator.forgotCoordinator)
                                }
            }
        }
    }
}
