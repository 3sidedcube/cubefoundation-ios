//
//  FontName.swift
//  CubeFoundation
//
//  Created by Sam Davis on 04/01/2023.
//  Copyright © 2023 3 SIDED CUBE. All rights reserved.
//

import SwiftUI

typealias FontName = Font.Name

extension Font {

    /// A name to use for fonts.
    struct Name: ResourceName {
        var string: String
    }
}
