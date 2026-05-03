//
//  SearchResultsView.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 03/05/2026.
//

import Foundation
import SwiftUI

struct SearchResultsView: View {
    
    let onMovieTap: (String) -> Void
    
    var body: some View {
        
        VStack(spacing: 16) {
            
            // 🔥 Top Bar
            HStack {
                Text("Results")
                    .font(.headline)
                Spacer()
            }
            .padding()
            
            // 🔥 Results List
            ScrollView {
                VStack(spacing: 12) {
                    
                    ForEach(0..<10) { index in
                        Button {
                            onMovieTap("search_\(index)")
                        } label: {
                            HStack {
                                Text("Result Movie \(index)")
                                
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                            }
                            .padding()
                            .background(Color.gray.opacity(0.15))
                            .cornerRadius(10)
                        }
                    }
                }
                .padding()
            }
        }
    }
}
