//
//  FontWeight+Extensions.swift
//  CubeFoundation
//
//  Created by Sam Davis on 04/01/2023.
//  Copyright © 2023 3 SIDED CUBE. All rights reserved.
//

import SwiftUI

extension Font.Weight: ExpressibleByIntegerLiteral {

    /// Initialise `Font.Weight` from numerical value.
    /// - Parameter value: `IntegerLiteralType`
    public init(integerLiteral value: IntegerLiteralType) {
        self.init(integer: value)
    }

    /// Initialize from an integer `value`.
    /// - Parameter value: `Int`
    public init(integer value: Int) {
        switch value {
        case 100:
            self = .ultraLight
        case 200:
            self = .thin
        case 300:
            self = .light
        case 400:
            self = .regular
        case 500:
            self = .medium
        case 600:
            self = .semibold
        case 700:
            self = .bold
        case 800:
            self = .heavy
        case 900:
            self = .black
        default:
            self = .regular
        }
    }

    /// The `String` name of this font weight
    public var name: String {
        switch self {
        case .black:
            return "Black"
        case .heavy:
            return "Heavy"
        case .bold:
            return "Bold"
        case .semibold:
            return "SemiBold"
        case .medium:
            return "Medium"
        case .regular:
            return "Regular"
        case .light:
            return "Light"
        case .thin:
            return "Thin"
        case .ultraLight:
            return "UltraLight"
        default:
            return "Unknown"
        }
    }

    /// Map to `UIFont.Weight` equivalent
    public var uiWeight: UIFont.Weight {
        switch self {
        case .black:
            return .black
        case .heavy:
            return .heavy
        case .bold:
            return .bold
        case .semibold:
            return .semibold
        case .medium:
            return .medium
        case .regular:
            return .regular
        case .light:
            return .light
        case .thin:
            return .thin
        case .ultraLight:
            return .ultraLight
        default:
            return .regular
        }
    }
}
