//
//  EdgeInsets+Extensions.swift
//  CubeFoundation
//
//  Created by Ben Shutt on 23/01/2023.
//  Copyright © 2023 3 SIDED CUBE. All rights reserved.
//

import SwiftUI

extension EdgeInsets {

    /// Zero insets
    static let zero = EdgeInsets(0)

    /// Initialize all insets to the same value
    ///
    /// - Parameter value: `CGFloat`
    init(_ value: CGFloat) {
        self.init(
            top: value,
            leading: value,
            bottom: value,
            trailing: value
        )
    }

    /// Initialize with vertical and horizontal values
    ///
    /// - Parameters:
    ///   - vertical: `CGFloat`
    ///   - horizontal: `CGFloat`
    init(vertical: CGFloat = 0, horizontal: CGFloat = 0) {
        self.init(
            top: vertical,
            leading: horizontal,
            bottom: vertical,
            trailing: horizontal
        )
    }
}
