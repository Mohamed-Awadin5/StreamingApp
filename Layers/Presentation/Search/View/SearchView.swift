//
//  File.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 03/05/2026.
//

import Foundation
import SwiftUI

struct SearchView: View {
    
    let onSearch: (String) -> Void
    
    @State private var query: String = ""
    
    var body: some View {
        
        VStack(spacing: 16) {
            
            // 🔥 Top Bar
            HStack {
                Text("Search")
                    .font(.headline)
                Spacer()
            }
            .padding()
            
            // 🔥 Search Field
            HStack {
                TextField("Search movies...", text: $query)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button("Go") {
                    onSearch(query)
                }
            }
            .padding()
            
            Spacer()
        }
    }
}

