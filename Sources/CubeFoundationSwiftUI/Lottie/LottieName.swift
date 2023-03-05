//
//  LottieName.swift
//  CubeFoundation
//
//  Created by Sam Davis on 06/01/2023.
//  Copyright © 2023 3 SIDED CUBE. All rights reserved.
//

#if canImport(Lottie)

import SwiftUI
import Lottie

public typealias LottieName = LottieView.Name

public extension LottieView {

    struct Name: ResourceName {
        public var string: String

        public init(string: String) {
            self.string = string
        }
    }
}

#endif
