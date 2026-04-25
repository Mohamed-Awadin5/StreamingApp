//
//  LegalScreen.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 25/04/2026.
//

import Foundation
import SwiftUI

struct LegalView: View {

    let onAccept: () -> Void

    var body: some View {

        VStack(spacing: 20) {

            Text("Terms & Policies")
                .font(.title)

            Text("Here are your legal terms...")

            Button("Accept & Continue") {
                onAccept()
            }
        }
        .padding()
    }
}
