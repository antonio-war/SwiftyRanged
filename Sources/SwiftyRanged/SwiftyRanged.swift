//
//  SwiftyRanged.swift
//
//
//  Created by Antonio Guerra on 28/03/23.
//

@propertyWrapper
public struct SwiftyRanged<Value: SwiftyRangeable>: Equatable {
    private var range: ClosedRange<Value>
    private var value: Value
    
    public init(wrappedValue value: Value, _ range: ClosedRange<Value>) {
        self.value = value
        self.range = range
    }
    
    public init(_ range: ClosedRange<Value>) {
        self.value = range.lowerBound
        self.range = range
    }
    
    public var wrappedValue: Value {
        get {
            return max(min(value, range.upperBound), range.lowerBound)
        }
        set {
            value = newValue
        }
    }
    
    public static func == (lhs: SwiftyRanged, rhs: SwiftyRanged) -> Bool {
        return lhs.wrappedValue == rhs.wrappedValue
    }
}
