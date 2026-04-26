//
//  AuthCoordinator.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 25/04/2026.
//

import Foundation
final class AuthCoordinator: BaseCoordinator<AuthCoordinator.Route> {
    enum Route: Hashable {
        case signUp
        case forgetPassword
        
    }
    var onAuthenticated: (() -> Void)?
     
     let signUpCoordinator = SignUpCoordinator()
     let forgotCoordinator = ForgotPasswordCoordinator()
     
     override init() {
         super.init()
         setup()
     }
     
     private func setup() {
         signUpCoordinator.pushRoute = { [weak self] route in
                     self?.path.append(route)
                 }

         signUpCoordinator.onFinish = { [weak self] in
             self?.onAuthenticated?()
         }
         forgotCoordinator.pushRoute = { [weak self] route in
                    self?.path.append(route)
                }
         forgotCoordinator.onFinish = { [weak self] in
             self?.pop()
         }
     }
}

