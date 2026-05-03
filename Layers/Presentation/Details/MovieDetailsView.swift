//
//  MovieDetailsView.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 03/05/2026.
//

import SwiftUI

struct MovieDetailsView: View {
    
    let onPlay: () -> Void
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            Text("Movie Details")
                .font(.largeTitle)
            
            Button("Play") {
                onPlay()
            }
        }
        .padding()
    }
}
