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
                        .navigationDestination(for: SignUpCoordinator.Route.self) { route in
                            switch route {
                            case .createPIN:
                                CreatePINView {
                                    coordinator.signUpCoordinator.goToWelcome()
                                }
                            case .welcome:
                                WelcomeView {
                                    coordinator.signUpCoordinator.goToInterests()
                                }
                            case .interests:
                                InterestsView {
                                    coordinator.signUpCoordinator.finish()
                                }
                            }
                        }
                        .navigationDestination(for: ForgotPasswordCoordinator.Route.self) { route in
                            switch route {
                            case .otp(let email):
                                OTPView {
                                    coordinator.forgotCoordinator.verifyOTP()
                                }
                            case .newPassword:
                                NewPasswordView {
                                    coordinator.forgotCoordinator.resetDone()
                                }
                            }
                        }
                    }
                }
            }
 
