//
//  FontWeight+Name.swift
//  CubeFoundation
//
//  Created by Sam Davis on 04/01/2023.
//  Copyright © 2023 3 SIDED CUBE. All rights reserved.
//

import SwiftUI

extension Font.Weight {

    /// The `String` name of this font weight
    var name: String {
        switch self {
        case .black:
            return "Black"
        case .bold:
            return "Bold"
        case .heavy:
            return "Heavy"
        case .light:
            return "Light"
        case .medium:
            return "Medium"
        case .regular:
            return "Regular"
        case .semibold:
            return "SemiBold"
        case .thin:
            return "Thin"
        case .ultraLight:
            return "UltraLight"
        default:
            return "Unknown"
        }
    }
}
