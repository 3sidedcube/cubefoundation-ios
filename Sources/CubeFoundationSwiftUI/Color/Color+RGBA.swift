//
//  Color+RGBA.swift
//  CubeFoundation
//
//  Created by Ben Shutt on 13/02/2023.
//  Copyright © 2023 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

import SwiftUI

#if canImport(UIKit)
import UIKit
typealias AppColor = UIColor
#elseif canImport(AppKit)
import AppKit
typealias AppColor = NSColor
#endif

extension Color {

    /// Red, green, blue opacity components of a color.
    /// Components in the range [0, 1]
    struct RGBA {

        /// Red component
        var red: Double

        /// Green component
        var green: Double

        /// Blue component
        var blue: Double

        /// Opacity component
        var opacity: Double
    }

    /// Get `RGBA` components from `AppColor`
    ///
    /// - Note:
    /// There doesn't seem to be a SwiftUI way of extracting the RGBA components as of yet.
    var rgba: RGBA {
        let appColor = AppColor(self)

        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var opacity: CGFloat = 0
        appColor.getRed(&red, green: &green, blue: &blue, alpha: &opacity)

        return RGBA(
            red: Double(red),
            green: Double(green),
            blue: Double(blue),
            opacity: Double(opacity)
        )
    }
}
