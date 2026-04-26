//
//  OnboardingView1.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 24/04/2026.
//

import Foundation
import SwiftUI

struct OnboardingScreen1: View {

    let next: () -> Void

    var body: some View {
        VStack {
            Text("Welcome Screen 1")

            Button("Next") {
                next()
            }
        }
    }
}
