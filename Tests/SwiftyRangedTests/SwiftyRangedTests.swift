//
//  SwiftyRangedTests.swift
//
//
//  Created by Antonio Guerra on 29/03/23.
//

import XCTest
@testable import SwiftyRanged

final class SwiftyRangedTests: XCTestCase {
    
    @SwiftyRanged(0...5) var intValue = 0
    @SwiftyRanged(0...5) var floatValue = 0
    @SwiftyRanged("d"..."j") var stringValue = "d"
    
    override func setUpWithError() throws {
        try super.setUpWithError()
    }
    
    override func tearDownWithError() throws {
        try super.tearDownWithError()
    }
    
    func testLowerBound() {
        intValue = -40
        XCTAssertGreaterThanOrEqual(intValue, 0)
        
        floatValue = -40
        XCTAssertGreaterThanOrEqual(floatValue, 0)
        
        stringValue = "a"
        XCTAssertGreaterThanOrEqual(stringValue, "d")
    }
    
    func testInnerBound() {
        intValue = 3
        XCTAssertEqual(intValue, 3)
        
        floatValue = 3
        XCTAssertEqual(floatValue, 3)
        
        stringValue = "e"
        XCTAssertEqual(stringValue, "e")
    }
    
    func testUpperBound() {
        intValue = 10
        XCTAssertLessThanOrEqual(intValue, 5)
        
        floatValue = 10
        XCTAssertLessThanOrEqual(floatValue, 5)
        
        stringValue = "z"
        XCTAssertLessThanOrEqual(stringValue, "j")
    }
}
