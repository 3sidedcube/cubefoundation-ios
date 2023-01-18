//
//  FigmaShadow.swift
//  CubeFoundation
//
//  Created by Sam Davis on 04/01/2023.
//  Copyright © 2023 3 SIDED CUBE. All rights reserved.
//
//  TODO: Add support for shadow spread.

import SwiftUI

/// A shadow from a Figma file
public struct FigmaShadow: Hashable {
    var x: CGFloat
    var y: CGFloat
    var blur: CGFloat
    var color: Color

    public init(x: CGFloat, y: CGFloat, blur: CGFloat, color: Color) {
        self.x = x
        self.y = y
        self.blur = blur
        self.color = color
    }
}
