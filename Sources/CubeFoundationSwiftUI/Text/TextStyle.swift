//
//  TextStyle.swift
//  CubeFoundation
//
//  Created by Sam Davis on 04/01/2023.
//  Copyright © 2023 3 SIDED CUBE. All rights reserved.
//

import SwiftUI

public struct TextStyle: Hashable {
    public var font: Font.Name
    public var weight: Font.Weight
    public var size: CGFloat
    public var lineHeight: CGFloat
    public var letter: CGFloat
    public var underline = false

    public init(
        font: Font.Name,
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
}
