//
//  SwiftyOptionalRanged.swift
//  
//
//  Created by Antonio Guerra on 29/03/23.
//

import Foundation

@propertyWrapper
public struct SwiftyOptionalRanged<Value: SwiftyRangeable>: Equatable {
    private var range: ClosedRange<Value>
    private var value: Value?
    
    public init(wrappedValue value: Value?, _ range: ClosedRange<Value>) {
        self.value = value
        self.range = range
    }
    
    public var wrappedValue: Value? {
        get {
            if let value {
                return max(min(value, range.upperBound), range.lowerBound)
            } else {
                return nil
            }
        }
        set {
            value = newValue
        }
    }
    
    public static func == (lhs: SwiftyOptionalRanged, rhs: SwiftyOptionalRanged) -> Bool {
        return lhs.wrappedValue == rhs.wrappedValue
    }
}
