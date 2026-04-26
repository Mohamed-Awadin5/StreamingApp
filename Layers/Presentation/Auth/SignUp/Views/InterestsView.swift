//
//  InterestsView.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 25/04/2026.
//

import Foundation
import SwiftUI
struct InterestsView: View {

    let next: () -> Void

    var body: some View {
        VStack {
            Text("Choose Interests")

            Button("Finish") {
                next()
            }
        }
    }
}
