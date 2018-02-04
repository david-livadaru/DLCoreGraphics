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

    func testAbsoluteValue() {
        var point = CGPoint(x: -1.0, y: 2.0)
        point.applyAbs()
        XCTAssert(point == CGPoint(x: 1.0, y: 2.0))
    }

    func testAbsoluteValue2() {
        var point = CGPoint(x: 1.0, y: -2.0)
        point.applyAbs()
        XCTAssert(point == CGPoint(x: 1.0, y: 2.0))
    }

    func testOverloadedAbs() {
        let point = CGPoint(x: -1.0, y: -2.0)
        XCTAssert(abs(point) == CGPoint(x: 1.0, y: 2.0))
    }

    func testRound() {
        var point = CGPoint(x: 1.2, y: 2.6)
        point.round()
        XCTAssert(point == CGPoint(x: 1.0, y: 3.0))
    }

    func testOverloadedRound() {
        let point = CGPoint(x: 1.2, y: 2.6)
        XCTAssert(round(point) == CGPoint(x: 1.0, y: 3.0))
    }

    func testCeil() {
        var point = CGPoint(x: 1.2, y: 2.6)
        point.ceil()
        XCTAssert(point == CGPoint(x: 2.0, y: 3.0))
    }

    func testOverloadedCeil() {
        let point = CGPoint(x: 1.2, y: 2.6)
        XCTAssert(ceil(point) == CGPoint(x: 2.0, y: 3.0))
    }

    func testFloor() {
        var point = CGPoint(x: 1.2, y: 2.6)
        point.floor()
        XCTAssert(point == CGPoint(x: 1.0, y: 2.0))
    }

    func testOverloadedFloor() {
        let point = CGPoint(x: 1.2, y: 2.6)
        XCTAssert(floor(point) == CGPoint(x: 1.0, y: 2.0))
    }
}
