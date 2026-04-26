//
//  SignInScreen.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 25/04/2026.
//

import Foundation
import SwiftUI

struct SignInView: View {

    let onSignUp: () -> Void
    let onForgotPassword: () -> Void
    let onLoginSuccess: () -> Void

    var body: some View {

        VStack(spacing: 16) {

            Text("Sign In")

            TextField("Email", text: .constant(""))
                .textFieldStyle(.roundedBorder)

            SecureField("Password", text: .constant(""))
                .textFieldStyle(.roundedBorder)

            Button("Login") {
                onLoginSuccess()
            }

            Button("Sign Up") {
                onSignUp()
            }

            Button("Forgot Password") {
                onForgotPassword()
            }
        }
        .padding()
    }
}
