//
//  FontWeight+Extensions.swift
//  CubeFoundation
//
//  Created by Sam Davis on 04/01/2023.
//  Copyright © 2023 3 SIDED CUBE. All rights reserved.
//

import SwiftUI

extension Font.Weight: @retroactive ExpressibleByIntegerLiteral {
    
    /**
     Initializes a `Font.Weight` from an integer literal.
     
     - Important: This initializer is deprecated. Converting integer literals to font weights is discouraged due to potential ambiguity and is subject to undefined behaviour, due to retroactive conformance.
     
     - Note: This initializer relies on retroactive conformance, which can lead to undefined behavior in certain cases. If the system or third-party libraries introduce their own conformance to the same protocol, it may cause conflicts or unpredictable outcomes. Use predefined values to avoid these risks.

     - Parameters:
       - value: The `IntegerLiteralType` used to initialize the `Font.Weight`.

     - SeeAlso: `init(integer:)`

     - Warning: Deprecated. Avoid using integer literals to initialize `Font.Weight`.
     */
    @available(*, deprecated, message: "This initializer is deprecated. Use predefined font weight values such as `.bold`, `.regular`, etc., for better clarity.")
    public init(integerLiteral value: IntegerLiteralType) {
        self.init(integer: value)
    }
    
    /**
     Initializes a `Font.Weight` from an integer value.
     
     This method maps common integer values to corresponding font weights:
     - 100: `.ultraLight`
     - 200: `.thin`
     - 300: `.light`
     - 400: `.regular`
     - 500: `.medium`
     - 600: `.semibold`
     - 700: `.bold`
     - 800: `.heavy`
     - 900: `.black`
     
     - Parameters:
       - value: An `Int` representing a numerical font weight.
     
     - Returns: A `Font.Weight` corresponding to the given integer value, or `.regular` if the value is out of range.
     */
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
    
    /**
     The name of the font weight as a string.
     
     - Returns: A `String` representing the name of the font weight, such as `"Bold"`, `"Regular"`, or `"Light"`.
     */
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
    
    /**
     Maps the `Font.Weight` to its corresponding `UIFont.Weight` equivalent.
     
     - Returns: The corresponding `UIFont.Weight` value, such as `.bold`, `.regular`, or `.light`.
     */
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

