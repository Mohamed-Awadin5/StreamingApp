//
//  NewPasswordView.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 25/04/2026.
//

import Foundation
import SwiftUI
struct NewPasswordView: View {

    let next: () -> Void

    var body: some View {
        VStack {
            Text("New Password")

            Button("Save") {
                next()
            }
        }
    }
}
