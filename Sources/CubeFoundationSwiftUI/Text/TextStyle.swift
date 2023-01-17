//
//  TextStyle.swift
//  CubeFoundation
//
//  Created by Sam Davis on 04/01/2023.
//  Copyright © 2023 3 SIDED CUBE. All rights reserved.
//

import SwiftUI

public struct TextStyle {
    var font: Font.Name
    var weight: Font.Weight
    var size: CGFloat
    var lineHeight: CGFloat
    var letter: CGFloat
    var underline = false

    public init(
        font: Font.Name,
        weight: Font.Weight,
        size: CGFloat,
        lineHeight: CGFloat,
        letter: CGFloat,
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
