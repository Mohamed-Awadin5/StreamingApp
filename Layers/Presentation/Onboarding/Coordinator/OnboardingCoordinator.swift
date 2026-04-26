//
//  OnboardingCoordinator.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 24/04/2026.
//

import SwiftUI

final class OnboardingCoordinator: BaseCoordinator<OnboardingCoordinator.Route> {

    enum Route: Hashable {
        case page2
        case page3
    }
    var onFinish: (() -> Void)?

    func next(from page: Int) {

        switch page {

        case 1:
            push(.page2)

        case 2:
            push(.page3)

        case 3:
            finish()
        default:
            break
        }
    }
    private func finish() {
            onFinish?()
        }
}
