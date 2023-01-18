//
//  ResourceName.swift
//  CubeFoundation
//
//  Created by Sam Davis on 04/01/2023.
//  Copyright © 2023 3 SIDED CUBE. All rights reserved.
//

import Foundation

public protocol ResourceName: ExpressibleByStringLiteral, Hashable {
    var string: String { get set }
    init(string: String)
}

public extension ResourceName {

    init(unicodeScalarLiteral: UnicodeScalar) {
        self.init(string: String(unicodeScalarLiteral))
    }

    init(extendedGraphemeClusterLiteral: Character) {
        self.init(string: String(extendedGraphemeClusterLiteral))
    }

    init(stringLiteral: String) {
        self.init(string: stringLiteral)
    }
}
