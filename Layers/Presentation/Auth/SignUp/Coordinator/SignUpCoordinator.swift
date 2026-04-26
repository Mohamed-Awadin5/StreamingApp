//
//  SignUpCoordinator.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 25/04/2026.
//

import Foundation
import SwiftUI

final class SignUpCoordinator: BaseCoordinator<SignUpCoordinator.Route> {

       enum Route: Hashable {
           case createPIN
           case welcome
           case interests
       }
       
       var onFinish: (() -> Void)?
       
    
              func goToPIN() {
           push(.createPIN)
       }
       
       func goToWelcome() {
           push(.welcome)
       }
       
       func goToInterests() {
           push(.interests)
       }
       
       func finish() {
           onFinish?()
       }
}
