//
//  Color+255.swift
//  CubeFoundation
//
//  Created by Ben Shutt on 13/02/2023.
//  Copyright © 2023 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

import SwiftUI

public extension Color {

    /// Shorthand for creating a `UIColor` with RGBA ranges in [0, 255].
    ///
    /// - Parameters:
    ///   - colorSpace: Color space, defaults to `.sRGB`
    ///   - red: Red component in [0, 255]
    ///   - green: Green component in [0, 255]
    ///   - blue: Blue component in [0, 255]
    ///   - opacity: Opacity component in [0, 255], defaults to 255
    init(
        _ colorSpace: RGBColorSpace = .sRGB,
        red255 red: Double,
        green: Double,
        blue: Double,
        opacity: Double = 255
    ) {
        self.init(
            colorSpace,
            red: red / 255,
            green: green / 255,
            blue: blue / 255,
            opacity: opacity / 255
        )
    }

    /// Shorthand for creating a `UIColor` with white in [0, 255].
    ///
    /// - Parameters:
    ///   - colorSpace: Color space, defaults to `.sRGB`
    ///   - white: White component in [0, 255]
    ///   - opacity: Opacity component in [0, 255]
    init(
        _ colorSpace: RGBColorSpace = .sRGB,
        white255 white: Double,
        opacity: Double = 255
    ) {
        self.init(
            colorSpace,
            white: white / 255,
            opacity: opacity / 255
        )
    }
}
