//
//  SplashView.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 24/04/2026.
//

import SwiftUI

struct SplashView: View {

    @EnvironmentObject var appCoordinator: AppCoordinator

    var body: some View {

        VStack {
            Text("Streaming App")
                .font(.largeTitle)
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                appCoordinator.start()
            }
        }
    }
}
