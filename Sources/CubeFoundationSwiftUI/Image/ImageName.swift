//
//  ImageName.swift
//  CubeFoundation
//
//  Created by Sam Davis on 04/01/2023.
//  Copyright © 2023 3 SIDED CUBE. All rights reserved.
//

import SwiftUI

@available(*, deprecated, message: "Use symbolicated assets in Xcode 15 instead")
public typealias ImageName = Image.Name

public extension Image {

    @available(*, deprecated, message: "Use symbolicated assets in Xcode 15 instead")
    struct Name: ResourceName {

        public var string: String

        public init(string: String) {
            self.string = string
        }
    }

    @available(*, deprecated, message: "Use symbolicated assets in Xcode 15 instead")
    init(_ name: Name) {
        self.init(name.string)
    }
}
