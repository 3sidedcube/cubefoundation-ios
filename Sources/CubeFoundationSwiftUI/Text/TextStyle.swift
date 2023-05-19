//
//  TextStyle.swift
//  CubeFoundation
//
//  Created by Sam Davis on 04/01/2023.
//  Copyright © 2023 3 SIDED CUBE. All rights reserved.
//

import SwiftUI

public struct TextStyle: Hashable {

    public var font: CustomFont
    public var weight: Font.Weight
    public var size: CGFloat
    public var lineHeight: CGFloat
    public var letter: CGFloat
    public var underline = false

    public init(
        font: CustomFont,
        weight: Font.Weight,
        size: CGFloat,
        lineHeight: CGFloat,
        letter: CGFloat = 0,
        underline: Bool = false
    ) {
        self.font = font
        self.weight = weight
        self.size = size
        self.lineHeight = lineHeight
        self.letter = letter
        self.underline = underline
    }

    // MARK: - Helper

    /// Make a `Font`
    public var mappedFont: Font {
        switch font {
        case .system:
            return .system(size: size)
        case let .custom(name):
            return .custom(name.string, size: size)
        }
    }

    /// Make a `UIFont`
    public var uiFont: UIFont? {
        switch font {
        case .system:
            return UIFont.systemFont(ofSize: size, weight: weight.uiWeight)
        case let .custom(name):
            return UIFont(name: "\(name) \(weight.name)", size: size)
        }
    }
}
