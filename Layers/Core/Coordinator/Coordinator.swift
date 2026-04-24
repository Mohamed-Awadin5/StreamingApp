//
//  File.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 24/04/2026.
//

import Foundation
import SwiftUI
protocol Coordinator:ObservableObject {
    associatedtype Route : Hashable
    var path: NavigationPath {
        get set
    }
    func push(_ route :Route)
    func pop()
    func popToRoot()
}
