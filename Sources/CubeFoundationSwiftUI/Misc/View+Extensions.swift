//
//  View+Extensions.swift
//  CubeFoundation
//
//  Created by Sam Davis on 04/01/2023.
//  Copyright © 2023 3 SIDED CUBE. All rights reserved.
//

import SwiftUI

public extension View {

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

    /// Implement a conditional modifier.
    /// - Warning: Native methods are preferred. Only use if absolutely necessary.
    /// - Parameters:
    ///   - condition: Condition of the `if` statement
    ///   - transform: Mapping of `self` to some `View`
    /// - Returns: `View`
    @ViewBuilder func `if`<Transform: View>(
        _ condition: Bool,
        transform: (Self) -> Transform
    ) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }

    /// Applies a transform if the optional value is non-nil.
    ///
    /// - Parameters:
    ///   - optional: An optional value to unwrap.
    ///   - transform: A closure that modifies the view using the unwrapped value.
    /// - Returns: Either the transformed view or the original view.
    @ViewBuilder
    func `ifLet`<Transform: View, Optional: Any>(
        _ optional: Optional?,
        transform: (Self, Optional) -> Transform
    ) -> some View {
        if let optional {
            transform(self, optional)
        } else {
            self
        }
    }

    /// Apply rounded corners and an `inner` stroke to the the view.
    /// - Parameters:
    ///   - cornerRadius: The radius of the corner
    ///   - color: The color of the border
    ///   - width: The width of the border
    func roundedBorder(
        cornerRadius: CGFloat,
        color: Color,
        width: CGFloat = 1
    ) -> some View {
        clipShape(RoundedRectangle(cornerRadius: cornerRadius))
            .overlay {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .strokeBorder(color, lineWidth: width)
            }
    }
}

