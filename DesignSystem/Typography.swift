//
//  Typography.swift
//  MovieStreamingApp
//
//  Created by mohamed awadin7 on 15/03/2026.
//

import UIKit
import SwiftUI

// MARK: - Font Family

enum AppFontFamily {
    
    static let regular = "Mulish-Regular"
    static let medium = "Mulish-Medium"
    static let semiBold = "Mulish-SemiBold"
    static let bold = "Mulish-Bold"
}


// MARK: - Font Weight

enum AppFontWeight {
    
    case regular
    case medium
    case semiBold
    case bold
    
    var fontName: String {
        
        switch self {
            
        case .regular:
            return AppFontFamily.regular
            
        case .medium:
            return AppFontFamily.medium
            
        case .semiBold:
            return AppFontFamily.semiBold
            
        case .bold:
            return AppFontFamily.bold
        }
    }
}

// MARK: - Text Style Model
struct AppTextStyle {
    
    let fontWeight: AppFontWeight
    let fontSize: CGFloat
    let lineHeight: CGFloat
    let letterSpacing: CGFloat
    let textStyle: UIFont.TextStyle
    
    init(
        fontWeight: AppFontWeight,
        fontSize: CGFloat,
        lineHeight: CGFloat,
        letterSpacing: CGFloat = 0,
        textStyle: UIFont.TextStyle
    
    ) {
        self.fontWeight = fontWeight
        self.fontSize = fontSize
        self.lineHeight = lineHeight
        self.letterSpacing = letterSpacing
        self.textStyle = textStyle
    }
}
// MARK: - Typography Tokens

enum AppTypography {
    

    static let h1 = AppTextStyle(
            fontWeight: .bold,
            fontSize: 48,
            lineHeight: 56,
            letterSpacing: 0,
            textStyle: .largeTitle
        )
    
    static let h2 = AppTextStyle(
        fontWeight: .bold,
        fontSize: 40,
        lineHeight: 48,
        letterSpacing: 0,
        textStyle:.title1
        
    )
    
    static let h3 = AppTextStyle(
        fontWeight: .bold,
        fontSize: 32,
        lineHeight: 40,
        letterSpacing:0,
        textStyle: .title2
    )
    
    static let h4 = AppTextStyle(
         fontWeight: .bold,
         fontSize: 24,
         lineHeight: 32,
         letterSpacing: 0,
         textStyle: .title2
     )
     
     static let h5 = AppTextStyle(
         fontWeight: .bold,
         fontSize: 20,
         lineHeight: 28,
         letterSpacing: 0,
         textStyle: .title3
     )
     
     static let h6 = AppTextStyle(
         fontWeight: .bold,
         fontSize: 18,
         lineHeight: 24,
         letterSpacing: 0,
         textStyle: .headline
     )
    
    static let h1SemiBold = AppTextStyle(
            fontWeight: .semiBold,
            fontSize: 48,
            lineHeight: 56,
            letterSpacing: 0,
            textStyle: .largeTitle
        )
        
        static let h2SemiBold = AppTextStyle(
            fontWeight: .semiBold,
            fontSize: 40,
            lineHeight: 48,
            letterSpacing: 0,
            textStyle: .title1
        )
        
        static let h3SemiBold = AppTextStyle(
            fontWeight: .semiBold,
            fontSize: 32,
            lineHeight: 40,
            letterSpacing: 0,
            textStyle: .title1
        )
        
        static let h4SemiBold = AppTextStyle(
            fontWeight: .semiBold,
            fontSize: 24,
            lineHeight: 32,
            letterSpacing: 0,
            textStyle: .title2
        )
        
        static let h5SemiBold = AppTextStyle(
            fontWeight: .semiBold,
            fontSize: 20,
            lineHeight: 28,
            letterSpacing: 0,
            textStyle: .title3
        )
        
        static let h6SemiBold = AppTextStyle(
            fontWeight: .semiBold,
            fontSize: 18,
            lineHeight: 24,
            letterSpacing: 0,
            textStyle: .headline
        )
    
    // Medium
    static let h1Medium = AppTextStyle(
        fontWeight: .medium,
                fontSize: 48,
                lineHeight: 56,
                letterSpacing: 0,
                textStyle: .largeTitle
            )
            
            static let h2Medium = AppTextStyle(
                fontWeight: .medium,
                fontSize: 40,
                lineHeight: 48,
                letterSpacing: 0,
                textStyle: .title1
            )
            
            static let h3Medium = AppTextStyle(
                fontWeight: .medium,
                fontSize: 32,
                lineHeight: 40,
                letterSpacing: 0,
                textStyle: .title1
            )
            
            static let h4Medium = AppTextStyle(
                fontWeight: .medium,
                fontSize: 24,
                lineHeight: 32,
                letterSpacing: 0,
                textStyle: .title2
            )
            
            static let h5Medium = AppTextStyle(
                fontWeight: .medium,
                fontSize: 20,
                lineHeight: 28,
                letterSpacing: 0,
                textStyle: .title3
            )
            
            static let h6Medium = AppTextStyle(
                fontWeight: .medium,
                fontSize: 18,
                lineHeight: 24,
                letterSpacing: 0,
                textStyle: .headline
            )

    // Body
       static let bodyXLBold = AppTextStyle(
           fontWeight: .bold,
           fontSize: 18,
           lineHeight: 28,
           letterSpacing: 0,
           textStyle: .headline
       )
       
       static let bodyLBold = AppTextStyle(
           fontWeight: .bold,
           fontSize: 16,
           lineHeight: 24,
           letterSpacing: 0,
           textStyle: .body
       )
       
       static let bodyMBold = AppTextStyle(
           fontWeight: .bold,
           fontSize: 14,
           lineHeight: 20,
           letterSpacing: 0,
           textStyle: .subheadline
       )
    static let bodySBold = AppTextStyle(
           fontWeight: .bold,
           fontSize: 12,
           lineHeight: 18,
           letterSpacing: 0,
           textStyle: .caption1
       )
       
       static let bodyXLMedium = AppTextStyle(
           fontWeight: .medium,
           fontSize: 18,
           lineHeight: 28,
           letterSpacing: 0,
           textStyle: .headline
       )
       
       static let bodyLMedium = AppTextStyle(
           fontWeight: .medium,
           fontSize: 16,
           lineHeight: 24,
           letterSpacing: 0,
           textStyle: .body
       )
       
       static let bodyMMedium = AppTextStyle(
           fontWeight: .medium,
           fontSize: 14,
           lineHeight: 20,
           letterSpacing: 0,
           textStyle: .subheadline
       )
    
    static let bodyXLRegular = AppTextStyle(
        fontWeight: .regular,
        fontSize: 18,
        lineHeight: 28,
        letterSpacing: 0,
        textStyle: .headline
    )
     //
    static let bodyLRegular = AppTextStyle(
        fontWeight: .regular,
        fontSize: 16,
        lineHeight: 24,
        letterSpacing: 0,
        textStyle: .body
    )
    
    static let bodyMRegular = AppTextStyle(
        fontWeight: .regular,
        fontSize: 14,
        lineHeight: 20,
        letterSpacing: 0,
        textStyle: .subheadline
    )
    
    static let bodySRegular = AppTextStyle(
        fontWeight: .regular,
        fontSize: 12,
        lineHeight: 18,
        letterSpacing: 0,
        textStyle: .caption1
    )
}

