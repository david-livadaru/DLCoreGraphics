//
//  CGVectorTests.swift
//  DLCoreGraphicsTests
//
//  Created by David Livadaru on 3/4/18.
//  Copyright © 2018 David Livadaru. All rights reserved.
//

import XCTest
import DLAngle
@testable import DLCoreGraphics

class CGVectorTests: XCTestCase {
    func testMultiplicationOperation() {
        let vector = CGVector(dx: 1.0, dy: 1.0)
        let result = CGVector(dx: 2.0, dy: 2.0)
        XCTAssert(vector * 2 == result)
    }

    func testMultiplicationEqualOperation() {
        var vector = CGVector(dx: 1.0, dy: 1.0)
        vector *= 2
        let result = CGVector(dx: 2.0, dy: 2.0)
        XCTAssert(vector == result)
    }

    func testDivisionOperation() {
        let vector = CGVector(dx: 10.0, dy: 10.0)
        let result = CGVector(dx: 5.0, dy: 5.0)
        XCTAssert(vector / 2 == result)
    }

    func testDivisionEqualOperation() {
        let vector = CGVector(dx: 10.0, dy: 10.0)
        let result = CGVector(dx: 5.0, dy: 5.0)
        XCTAssert(vector / 2 == result)
    }

    func testAbsoluteValue() {
        var vector = CGVector(dx: -1.0, dy: 2.0)
        vector.applyAbs()
        XCTAssert(vector == CGVector(dx: 1.0, dy: 2.0))
    }

    func testAbsoluteValue2() {
        var vector = CGVector(dx: 1.0, dy: -2.0)
        vector.applyAbs()
        XCTAssert(vector == CGVector(dx: 1.0, dy: 2.0))
    }

    func testOverloadedAbs() {
        let vector = CGVector(dx: -1.0, dy: -2.0)
        XCTAssert(abs(vector) == CGVector(dx: 1.0, dy: 2.0))
    }

    func testRound() {
        var vector = CGVector(dx: 1.2, dy: 2.6)
        vector.round()
        XCTAssert(vector == CGVector(dx: 1.0, dy: 3.0))
    }

    func testOverloadedRound() {
        let vector = CGVector(dx: 1.2, dy: 2.6)
        XCTAssert(round(vector) == CGVector(dx: 1.0, dy: 3.0))
    }

    func testCeil() {
        var vector = CGVector(dx: 1.2, dy: 2.6)
        vector.ceil()
        XCTAssert(vector == CGVector(dx: 2.0, dy: 3.0))
    }

    func testOverloadedCeil() {
        let vector = CGVector(dx: 1.2, dy: 2.6)
        XCTAssert(ceil(vector) == CGVector(dx: 2.0, dy: 3.0))
    }

    func testFloor() {
        var vector = CGVector(dx: 1.2, dy: 2.6)
        vector.floor()
        XCTAssert(vector == CGVector(dx: 1.0, dy: 2.0))
    }

    func testOverloadedFloor() {
        let vector = CGVector(dx: 1.2, dy: 2.6)
        XCTAssert(floor(vector) == CGVector(dx: 1.0, dy: 2.0))
    }

    func testComparison() {
        let vector1 = CGVector(dx: 2.0, dy: -3.0)
        let vector2 = CGVector(dx: 6.0, dy: 4.0)
        XCTAssert(vector1 < vector2)
    }

    func testInversible() {
        let vector = CGVector(dx: -1.0, dy: 3.0)
        XCTAssert(-vector == CGVector(dx: 1.0, dy: -3.0))
    }

    func testExtensionAngle() {
        let vector = CGVector(dx: 1.0, dy: 1.0)
        XCTAssert(vector.direction == Radian.pi_4)
    }

    func testExtensionMagnitude() {
        let vector = CGVector(dx: 3.0, dy: 4.0)
        XCTAssert(vector.magnitude.equals(to: 5.0))
    }
}
