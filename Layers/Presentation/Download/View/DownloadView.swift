//
//  DownloadView.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 03/05/2026.
//

import Foundation
import SwiftUI

struct DownloadsView: View {
    
    let onMovieTap: (String) -> Void
    
    var body: some View {
        
        VStack(spacing: 16) {
            
            // 🔥 Top Bar
            HStack {
                Text("Downloads")
                    .font(.headline)
                Spacer()
            }
            .padding()
            
            // 🔥 Downloads List
            ScrollView {
                VStack(spacing: 12) {
                    
                    ForEach(0..<10) { index in
                        Button {
                            onMovieTap("download_\(index)")
                        } label: {
                            HStack {
                                
                                VStack(alignment: .leading) {
                                    Text("Downloaded Movie \(index)")
                                        .font(.body)
                                    
                                    Text("Ready to watch offline")
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                }
                                
                                Spacer()
                                
                                Image(systemName: "arrow.down.circle.fill")
                                    .foregroundColor(.blue)
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
