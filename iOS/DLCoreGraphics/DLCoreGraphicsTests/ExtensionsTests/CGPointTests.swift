//
//  CGPointTests.swift
//  DLCoreGraphicsTests
//
//  Created by David Livadaru on 2/4/18.
//

import XCTest
@testable import DLCoreGraphics

class CGPointTests: XCTestCase {
    func testPlusOperation() {
        let point1 = CGPoint(x: 1.0, y: 1.0)
        let point2 = CGPoint(x: 2.0, y: 2.0)
        let result = CGPoint(x: 3.0, y: 3.0)
        XCTAssert(point1 + point2 == result)
    }

    func testPlusEqualOperation() {
        var point1 = CGPoint(x: 1.0, y: 1.0)
        let point2 = CGPoint(x: 2.0, y: 2.0)
        point1 += point2
        let result = CGPoint(x: 3.0, y: 3.0)
        XCTAssert(point1 == result)
    }

    func testMinusOperation() {
        let point1 = CGPoint(x: 3.0, y: 3.0)
        let point2 = CGPoint(x: 2.0, y: 2.0)
        let result = CGPoint(x: 1.0, y: 1.0)
        XCTAssert(point1 - point2 == result)
    }

    func testMinusEqualOperation() {
        var point1 = CGPoint(x: 3.0, y: 3.0)
        let point2 = CGPoint(x: 2.0, y: 2.0)
        point1 -= point2
        let result = CGPoint(x: 1.0, y: 1.0)
        XCTAssert(point1 == result)
    }


    func testMultiplicationOperation() {
        let point = CGPoint(x: 1.0, y: 1.0)
        let result = CGPoint(x: 2.0, y: 2.0)
        XCTAssert(point * 2 == result)
    }

    func testMultiplicationEqualOperation() {
        var point = CGPoint(x: 1.0, y: 1.0)
        point *= 2
        let result = CGPoint(x: 2.0, y: 2.0)
        XCTAssert(point == result)
    }

    func testDivisionOperation() {
        let point = CGPoint(x: 10.0, y: 10.0)
        let result = CGPoint(x: 5.0, y: 5.0)
        XCTAssert(point / 2 == result)
    }

    func testDivisionEqualOperation() {
        let point = CGPoint(x: 10.0, y: 10.0)
        let result = CGPoint(x: 5.0, y: 5.0)
        XCTAssert(point / 2 == result)
    }
}
