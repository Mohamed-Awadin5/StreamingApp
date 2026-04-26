//
//  OnboardingScreen3.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 24/04/2026.
//

import Foundation
import SwiftUI

struct OnboardingScreen3: View {

    let next: () -> Void

    var body: some View {
        VStack {
            Text("Final Screen 3")

            Button("Finish") {
                next()
            }
        }
    }
}
