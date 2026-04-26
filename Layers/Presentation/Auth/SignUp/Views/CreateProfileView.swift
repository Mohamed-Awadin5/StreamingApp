//
//  CreateProfileView.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 25/04/2026.
//

import Foundation
import SwiftUI

struct CreateProfileView: View {

    let next: () -> Void

    var body: some View {

        VStack(spacing: 20) {

            Text("Create Profile")

            TextField("Name", text: .constant(""))
                .textFieldStyle(.roundedBorder)

            TextField("Email", text: .constant(""))
                .textFieldStyle(.roundedBorder)

            Button("Next") {
                next()
            }
        }
        .padding()
    }
}
