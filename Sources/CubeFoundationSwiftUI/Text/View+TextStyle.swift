//
//  View+TextStyle.swift
//  
//
//  Created by Sam Davis on 04/01/2023.
//

import SwiftUI

public extension Text {

    /// Applies all aspects of a `TextStyle` to this `Text`.
    @available(iOS, obsoleted: 16.0, message: "Use `View.style(_ style: TextStyle)`")
    func style(_ style: TextStyle) -> some View {
        // Initialise as a UIFont to get the intrinsic line height.
        let uiFont = UIFont(name: "\(style.font.string) \(style.weight.name)", size: style.size)
        let fontLineHeight = uiFont?.lineHeight ?? style.size
        let lineSpacing = style.lineHeight - fontLineHeight

        return self
            .font(.custom(style.font.string, size: style.size).weight(style.weight))
            .tracking(style.letter)
            .underline(style.underline)
            .lineSpacing(lineSpacing)
            .padding(.vertical, lineSpacing / 2)
    }
}

public extension TextField {

    /// Applies all aspects of a `TextStyle` to this `TextField`.
    ///
    /// - Warning: `.tracking` and `.underline` are not supported
    @available(iOS, obsoleted: 16.0, message: "Use `View.style(_ style: TextStyle)`")
    func style(_ style: TextStyle) -> some View {
        // Initialise as a UIFont to get the intrinsic line height.
        let uiFont = UIFont(name: "\(style.font.string) \(style.weight.name)", size: style.size)
        let fontLineHeight = uiFont?.lineHeight ?? style.size
        let lineSpacing = style.lineHeight - fontLineHeight

        return self
            .font(.custom(style.font.string, size: style.size).weight(style.weight))
            // .tracking not supported
            // .underline not supported
            .lineSpacing(lineSpacing)
            .padding(.vertical, lineSpacing / 2)
    }
}

public extension View {

    /// Applies all aspects of a `TextStyle` to this `View`.
    @available(iOS 16.0, *)
    func style(_ style: TextStyle) -> some View {
        // Initialise as a UIFont to get the intrinsic line height.
        let uiFont = UIFont(name: "\(style.font.string) \(style.weight.name)", size: style.size)
        let fontLineHeight = uiFont?.lineHeight ?? style.size
        let lineSpacing = style.lineHeight - fontLineHeight

        return self
            .font(.custom(style.font.string, size: style.size).weight(style.weight))
            .tracking(style.letter)
            .underline(style.underline)
            .lineSpacing(lineSpacing)
            .padding(.vertical, lineSpacing / 2)
    }
}
