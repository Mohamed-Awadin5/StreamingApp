//
//  OnboardingScreen2.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 24/04/2026.
//

import Foundation
import SwiftUI

struct OnboardingScreen2: View {

    let next: () -> Void

    var body: some View {
        VStack {
            Text("Feature Screen 2")

            Button("Next") {
                next()
            }
        }
    }
}
