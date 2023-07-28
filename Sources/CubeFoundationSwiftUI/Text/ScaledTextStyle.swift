//
//  ScaledTextStyle.swift
//  CubeFoundation
//
//  Created by Ben Shutt on 16/06/2023.
//  Copyright © 2023 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

import SwiftUI

/// Apply a `TextStyle` catering for the device's dynamic text size.
public struct ScaledTextStyle: ViewModifier {

    @Environment(\.sizeCategory) var sizeCategory
    public var style: TextStyle

    public func body(content: Content) -> some View {
        content
            .font(style.font.weight(style.weight))
            .tracking(style.letter)
            .underline(style.underline)
            .lineSpacing(style.lineSpacing)
            .padding(.vertical, style.lineSpacing / 2)
    }
}

// MARK: - View + ScaledTextStyle

public extension View {

    func style(_ style: TextStyle) -> some View {
        self.modifier(ScaledTextStyle(style: style))
    }
}
