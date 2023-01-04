//
//  Frame+Size.swift
//  CubeFoundation
//
//  Created by Sam Davis on 04/01/2023.
//  Copyright © 2023 3 SIDED CUBE. All rights reserved.
//

import SwiftUI

extension View {

    /// Positions this view within an invisible frame with the specified size.
    /// - Parameters:
    ///   - size: A fixed dimension for the width and height of the resulting view.
    ///   - alignment: The alignment of this view inside the resulting frame.
    /// - Returns: A view with equal fixed dimensions of width and height.
    func frame(
        size: CGFloat,
        alignment: Alignment = .center
    ) -> some View {
        self.frame(
            width: size,
            height: size,
            alignment: alignment
        )
    }
}
