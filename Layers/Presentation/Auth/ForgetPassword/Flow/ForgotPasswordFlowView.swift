//
//  ForgotPasswordFlowView.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 25/04/2026.
//

import Foundation
import SwiftUI

struct ForgotPasswordFlowView: View {

    @ObservedObject  var coordinator :ForgotPasswordCoordinator

    var body: some View {


            EnterEmailView {
                coordinator.submitEmail("test email")
            }

            .navigationDestination(for: ForgotPasswordCoordinator.Route.self) { route in

                switch route {

                case .otp(let email):
                    OTPView {
                        coordinator.verifyOTP()
                    }

                case .newPassword:
                    NewPasswordView {
                        coordinator.resetDone()
                    }

                    }
                }
            }
        }
    

