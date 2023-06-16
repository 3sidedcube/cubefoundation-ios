//
//  View+TextStyle.swift
//  
//
//  Created by Sam Davis on 04/01/2023.
//

import SwiftUI

// TODO: Delete this file when iOS 15 is no longer supported

public extension Text {

    /// Applies all aspects of a `TextStyle` to this `Text`.
    @available(iOS, obsoleted: 16.0, message: "Use `View.style(_ style: TextStyle)`")
    @ViewBuilder func style(_ style: TextStyle) -> some View {
        if #available(iOS 16, *) {
            self.modifier(ScaledTextStyle(style: style))
        } else {
            self.font(style.font.weight(style.weight))
                .tracking(style.letter)
                .underline(style.underline)
                .lineSpacing(style.lineSpacing)
                .padding(.vertical, style.lineSpacing / 2)
        }
    }
}
