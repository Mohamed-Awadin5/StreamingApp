//
//  BaseCoordinator.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 24/04/2026.
//

import Foundation
import SwiftUI
class BaseCoordinator<Route:Hashable>: Coordinator {
    @Published var path = NavigationPath()

    func push(_ route: Route) {

        path.append( route)
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    
}
