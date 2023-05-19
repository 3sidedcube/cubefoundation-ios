//
//  CustomFont.swift
//  CubeFoundation
//
//  Created by Ben Shutt on 19/05/2023.
//  Copyright © 2023 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

import SwiftUI

/// Types of font
public enum CustomFont: ExpressibleByStringLiteral, Equatable, Hashable {

    /// System font
    case system

    /// Custom font with name
    case custom(String)

    /// Initialize with string literal making a custom font with name
    /// - Parameter value: `String`
    public init(stringLiteral value: String) {
        self = .custom(value)
    }
}
