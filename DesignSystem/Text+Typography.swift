//
//  Text+Typography.swift
//  MovieStreamingApp
//
//  Created by mohamed awadin7 on 17/03/2026.
//

import SwiftUI

extension Text {
    
    func appTypography(_ style: AppTextStyle) -> some View {
        self
            .font(.custom(style.fontWeight.fontName, size: style.fontSize))
            .tracking(style.letterSpacing)
    }
}
