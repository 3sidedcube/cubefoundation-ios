//
//  FontName.swift
//  CubeFoundation
//
//  Created by Sam Davis on 04/01/2023.
//  Copyright © 2023 3 SIDED CUBE. All rights reserved.
//

import SwiftUI

public typealias FontName = Font.Name

public extension Font {

    /// A name to use for fonts.
    enum Name: ResourceName {

        /// System font
        case system

        /// Custom font with name
        case custom(String)

        /// Initialize with string literal making a custom font with name
        /// - Parameter value: `String`
        public init(string value: String) {
            self = .custom(value)
        }
    }
}
