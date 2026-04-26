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
       

    var pushRoute: ((Route) -> Void)?

      func goToPIN()       { pushRoute?(.createPIN) }
      func goToWelcome()   { pushRoute?(.welcome) }
      func goToInterests() { pushRoute?(.interests) }
    func finish()        { onFinish?()}
}
