//
//  View+FigmaShadow.swift
//  CubeFoundation
//
//  Created by Sam Davis on 04/01/2023.
//  Copyright © 2023 3 SIDED CUBE. All rights reserved.
//

import SwiftUI

extension View {

    /// Applies a `FigmaShadow` to this `View`.
    /// - Parameter shadow: `FigmaShadow`
    /// - Returns: A `View` with a `FigmaShadow` applied according to the value you supply.
    func shadow(_ shadow: FigmaShadow) -> some View {
        return self.shadow(
            color: shadow.color,
            radius: shadow.blur / 2.0,
            x: shadow.x,
            y: shadow.y
        )
    }
}
