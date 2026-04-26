//
//  LegalFlowView.swift
//  StreamingApp
//
//  Created by Ayatullah Salah on 26/04/2026.
//

import Foundation
import SwiftUI

struct LegalFlowView: View {

    @ObservedObject var coordinator: LegalCoordinator


    var body: some View {

        NavigationStack(path: $coordinator.path) {

            LegalView {
                coordinator.onAccept?()
            }

            
            }
        }
    }

