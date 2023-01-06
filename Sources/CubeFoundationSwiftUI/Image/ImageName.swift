//
//  ImageName.swift
//  CubeFoundation
//
//  Created by Sam Davis on 04/01/2023.
//  Copyright © 2023 3 SIDED CUBE. All rights reserved.
//

import SwiftUI

public typealias ImageName = Image.Name

public extension Image {

    struct Name: ResourceName {
        public var string: String

        public init(string: String) {
            self.string = string
        }
    }

    init(_ name: Name) {
        self.init(name.string)
    }
}
