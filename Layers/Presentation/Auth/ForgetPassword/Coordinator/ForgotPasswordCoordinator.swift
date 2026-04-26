//
//  ForgotPasswordCoordinator.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 25/04/2026.
//

import Foundation
import SwiftUI

final class ForgotPasswordCoordinator: BaseCoordinator<ForgotPasswordCoordinator.Route> {
    enum Route: Hashable {
          case otp(email: String)
          case newPassword
      }
      
      var onFinish: (() -> Void)?
      
    
      
      func submitEmail(_ email: String) {
          push(.otp(email: email))
      }
      
      func verifyOTP() {
          push(.newPassword)
      }
      
      func resetDone() {
          onFinish?()
      }
}
