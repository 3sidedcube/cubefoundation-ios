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
    public var x: CGFloat
    public var y: CGFloat
    public var blur: CGFloat
    public var color: Color

    public init(x: CGFloat, y: CGFloat, blur: CGFloat, color: Color) {
        self.x = x
        self.y = y
        self.blur = blur
        self.color = color
    }
}
