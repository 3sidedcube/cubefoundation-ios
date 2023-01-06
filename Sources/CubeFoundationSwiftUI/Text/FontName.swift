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
    struct Name: ResourceName {

        public var string: String

        public init(string: String) {
            self.string = string
        }
    }
}
