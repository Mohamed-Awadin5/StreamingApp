//
//  WelcomeView.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 25/04/2026.
//

import Foundation
import SwiftUI
struct WelcomeView: View {

    let next: () -> Void

    var body: some View {
        VStack {
            Text("Welcome 🎉")

            Button("Next") {
                next()
            }
        }
    }
}
