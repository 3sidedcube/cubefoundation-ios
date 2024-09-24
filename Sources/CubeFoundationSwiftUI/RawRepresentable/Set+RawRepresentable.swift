//
//  Set+RawRepresentable.swift
//  CubeFoundation
//
//  Created by Sam Davis on 04/01/2023.
//  Copyright © 2023 3 SIDED CUBE. All rights reserved.
//

import Foundation

extension Set: @retroactive RawRepresentable where Element == String {
    
    /**
     Initializes a set of `String` elements from a raw string representation.
     
     - Note: This initializer is deprecated due to the potential issues with retroactive conformance. Instead of relying on `RawRepresentable`, it is recommended that applications define their own encoding and decoding logic, especially when dealing with persistent storage, such as `AppStorage`.

     - Important: This initializer should not be used in new code. Custom serialization and deserialization functions should be implemented for encoding and decoding sets into strings.

     - Parameters:
       - rawValue: A `String` representing a JSON-encoded set of strings.
     
     - Returns: An optional set of `String` elements decoded from the `rawValue`, or `nil` if decoding fails.

     - SeeAlso: `JSONDecoder`, `JSONEncoder`
     
     - Warning: Deprecated. Avoid using this initializer in future code.
     */
    @available(*, deprecated, message: "This initializer is deprecated due to potential retroactive conformance issues. Implement custom encoding and decoding logic instead.")
    public init?(rawValue: String) {
        guard let data = rawValue.data(using: .utf8),
              let result = try? JSONDecoder().decode(Set<Element>.self, from: data)
        else {
            return nil
        }
        self = result
    }
    
    /**
     A raw string representation of the set of `String` elements.
     
     - Note: This property is deprecated due to the potential issues with retroactive conformance. Instead of relying on `RawRepresentable`, applications should implement their own encoding and decoding logic.

     - Returns: A `String` representing a JSON-encoded version of the set, or `"[]"` if encoding fails.

     - Warning: Deprecated. Avoid using this property in future code.
     */
    @available(*, deprecated, message: "This property is deprecated due to potential retroactive conformance issues. Implement custom encoding and decoding logic instead.")
    public var rawValue: String {
        guard let data = try? JSONEncoder().encode(self),
              let result = String(data: data, encoding: .utf8)
        else {
            return "[]"
        }
        return result
    }
}

