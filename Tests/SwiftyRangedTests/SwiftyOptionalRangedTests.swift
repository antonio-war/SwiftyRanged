//
//  SwiftyOptionalRangedTests.swift
//  
//
//  Created by Antonio Guerra on 29/03/23.
//

import XCTest
@testable import SwiftyRanged

final class SwiftyOptionalRangedTests: XCTestCase {
    
    @SwiftyOptionalRanged(0...5) var intValue: Int? = 0
    @SwiftyOptionalRanged(0...5) var floatValue: Float? = 0
    @SwiftyOptionalRanged("d"..."j") var stringValue: String? = "d"
    
    override func setUpWithError() throws {
        try super.setUpWithError()
    }
    
    override func tearDownWithError() throws {
        try super.tearDownWithError()
        intValue = nil
        floatValue = nil
        stringValue = nil
    }
    
    func testLowerBound() {
        intValue = -40
        XCTAssertNotNil(intValue)
        XCTAssertGreaterThanOrEqual(intValue!, 0)
        
        floatValue = -40
        XCTAssertNotNil(floatValue)
        XCTAssertGreaterThanOrEqual(floatValue!, 0)
        
        stringValue = "a"
        XCTAssertNotNil(stringValue)
        XCTAssertGreaterThanOrEqual(stringValue!, "d")
    }
    
    func testInnerBound() {
        intValue = 3
        XCTAssertNotNil(intValue)
        XCTAssertEqual(intValue!, 3)
        
        floatValue = 3
        XCTAssertNotNil(floatValue)
        XCTAssertEqual(floatValue!, 3)
        
        stringValue = "e"
        XCTAssertNotNil(stringValue)
        XCTAssertEqual(stringValue!, "e")
    }
    
    func testUpperBound() {
        intValue = 10
        XCTAssertNotNil(intValue)
        XCTAssertLessThanOrEqual(intValue!, 5)
        
        floatValue = 10
        XCTAssertNotNil(floatValue)
        XCTAssertLessThanOrEqual(floatValue!, 5)
        
        stringValue = "z"
        XCTAssertNotNil(stringValue)
        XCTAssertLessThanOrEqual(stringValue!, "j")
    }
    
    func testNilValue() {
        intValue = nil
        XCTAssertNil(intValue)
        
        floatValue = nil
        XCTAssertNil(floatValue)
        
        stringValue = nil
        XCTAssertNil(stringValue)
    }
}
