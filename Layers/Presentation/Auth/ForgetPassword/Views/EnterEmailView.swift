//
//  EnterEmailView.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 25/04/2026.
//

import Foundation
import SwiftUI
struct EnterEmailView: View {

    let next: () -> Void

    var body: some View {
        VStack {
            Text("Enter Email")

            Button("Next") {
                next()
            }
        }
    }
}
