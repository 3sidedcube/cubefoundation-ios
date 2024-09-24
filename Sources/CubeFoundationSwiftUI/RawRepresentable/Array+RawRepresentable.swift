//
//  Array+RawRepresentable.swift
//  CubeFoundation
//
//  Created by Sam Davis on 04/01/2023.
//  Copyright © 2023 3 SIDED CUBE. All rights reserved.
//

import Foundation

extension Array: @retroactive RawRepresentable where Element: Codable {
    
    /**
     Initializes an array from a raw string representation.
     
     - Note: This initializer is deprecated due to the use of retroactive conformance, which may introduce undefined behavior. Instead of relying on `RawRepresentable`, it is recommended that applications define their own encoding and decoding logic, especially when working with `AppStorage` data.

     - Important: This initializer should not be used in new code. Custom serialization and deserialization functions should be implemented to handle encoding and decoding arrays into strings.

     - Parameters:
       - rawValue: A `String` representing a JSON-encoded array.
     
     - Returns: An optional array of type `[Element]` decoded from the `rawValue`, or `nil` if decoding fails.

     - SeeAlso: `JSONDecoder`, `JSONEncoder`
     
     - Warning: Deprecated. Avoid using this initializer in future code.
     */
    @available(*, deprecated, message: "This initializer is deprecated due to retroactive conformance issues. Implement custom encoding and decoding logic instead.")
    public init?(rawValue: String) {
        guard let data = rawValue.data(using: .utf8),
              let result = try? JSONDecoder().decode([Element].self, from: data)
        else {
            return nil
        }
        self = result
    }
    
    /**
     A raw string representation of the array.
     
     - Note: This property is deprecated due to the use of retroactive conformance. Instead of relying on `RawRepresentable`, applications should implement their own encoding and decoding logic.

     - Returns: A `String` representing a JSON-encoded version of the array, or `"[]"` if encoding fails.

     - Warning: Deprecated. Avoid using this property in future code.
     */
    @available(*, deprecated, message: "This property is deprecated due to retroactive conformance issues. Implement custom encoding and decoding logic instead.")
    public var rawValue: String {
        guard let data = try? JSONEncoder().encode(self),
              let result = String(data: data, encoding: .utf8)
        else {
            return "[]"
        }
        return result
    }
}
