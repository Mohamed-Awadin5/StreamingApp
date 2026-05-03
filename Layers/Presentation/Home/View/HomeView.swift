//
//  HomeView.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 03/05/2026.
//

import Foundation
import SwiftUI

struct HomeView: View {
    
    let onMovieTap: (String) -> Void
    let onSearchTap: () -> Void
    let onProfileTap: () -> Void
    
    var body: some View {
        
        VStack(spacing: 16) {
            
            // 🔥 Top Bar
            HStack {
                
                Button(action: onProfileTap) {
                    Image(systemName: "person.circle")
                }
                
                Spacer()
                
                Text("Home")
                    .font(.headline)
                
                Spacer()
                
                Button(action: onSearchTap) {
                    Image(systemName: "magnifyingglass")
                }
            }
            .padding()
            
            // 🔥 Movies List (dummy)
            ScrollView {
                VStack(spacing: 12) {
                    
                    ForEach(0..<10) { index in
                        Button {
                            onMovieTap("movie_\(index)")
                        } label: {
                            Text("Movie \(index)")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(8)
                        }
                    }
                }
                .padding()
            }
        }
    }
}
