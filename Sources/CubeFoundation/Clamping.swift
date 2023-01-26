//
//  Clamping.swift
//  CubeFoundation
//
//  Created by Ben Shutt on 25/01/2023.
//  Copyright © 2023 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

import Foundation

@propertyWrapper
public struct Clamping<Value: Comparable> {

    public var value: Value
    public let range: ClosedRange<Value>

    public init(wrappedValue value: Value, range: ClosedRange<Value>) {
        precondition(range.contains(value))
        self.value = value
        self.range = range
    }

    public var wrappedValue: Value {
        get { value }
        set { value = min(max(range.lowerBound, newValue), range.upperBound) }
    }
}
