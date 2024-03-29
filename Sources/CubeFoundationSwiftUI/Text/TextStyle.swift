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

    // MARK: - Font Scaling

    /// Scaled text size
    public var scaledSize: CGFloat {
         UIFontMetrics.default.scaledValue(for: size)
    }

    /// Scaled size relative to default size
    public var fontScale: CGFloat {
        size > 0 ? scaledSize / size : 1
    }

    /// Get the line spacing
    /// TODO - Are we implementing lineHeight correctly? Is it an iOS thing?
    public var lineSpacing: CGFloat {
        fontScale * lineHeight - (uiFont?.lineHeight ?? scaledSize)
    }

    // MARK: - Font Mapping

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
