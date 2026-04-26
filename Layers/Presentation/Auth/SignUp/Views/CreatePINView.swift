//
//  CreatePINView.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 25/04/2026.
//

import Foundation
import SwiftUI
struct CreatePINView: View {

    let next: () -> Void

    var body: some View {
        VStack {
            Text("Create PIN")

            Button("Next") {
                next()
            }
        }
    }
}
