//
//  TextStyle.swift
//  CubeFoundation
//
//  Created by Sam Davis on 04/01/2023.
//  Copyright © 2023 3 SIDED CUBE. All rights reserved.
//

import SwiftUI

public struct TextStyle: Hashable {

    public var fontName: Font.Name
    public var weight: Font.Weight
    public var size: CGFloat
    public var lineHeight: CGFloat
    public var letter: CGFloat
    public var underline = false

    public init(
        _ fontName: Font.Name,
        weight: Font.Weight,
        size: CGFloat,
        lineHeight: CGFloat,
        letter: CGFloat = 0,
        underline: Bool = false
    ) {
        self.fontName = fontName
        self.weight = weight
        self.size = size
        self.lineHeight = lineHeight
        self.letter = letter
        self.underline = underline
    }

    // MARK: - Helper

    /// Scaled text size
    private var scaledSize: CGFloat {
         UIFontMetrics.default.scaledValue(for: size)
    }

    /// Get the line spacing
    /// TODO - Are we implementing lineHeight correctly? Is it an iOS thing?
    var lineSpacing: CGFloat {
        let scale = size != 0 ? scaledSize / size : 1
        let fontLineHeight = uiFont?.lineHeight ?? size
        return scale * (lineHeight - fontLineHeight)
    }

    /// Make a `Font`
    public var font: Font {
        switch fontName {
        case .system:
            return .system(size: scaledSize)
        case let .custom(name):
            return .custom(name, size: scaledSize)
        }
    }

    /// Make a `UIFont`
    public var uiFont: UIFont? {
        switch fontName {
        case .system:
            return UIFont.systemFont(ofSize: scaledSize, weight: weight.uiWeight)
        case let .custom(name):
            return UIFont(name: "\(name) \(weight.name)", size: scaledSize)
        }
    }
}
