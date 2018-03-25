//
//  CGSizeTests.swift
//  DLCoreGraphicsTests
//
//  Created by David Livadaru on 2/5/18.
//

import XCTest
@testable import DLCoreGraphics

class CGSizeTests: XCTestCase {
    func testPlusOperation() {
        let size1 = CGSize(width: 10.0, height: 10.0)
        let size2 = CGSize(width: 10.0, height: 10.0)
        XCTAssert(size1 + size2 == CGSize(width: 20.0, height: 20.0))
    }

    func testPlusEqualOperation() {
        var size1 = CGSize(width: 10.0, height: 10.0)
        let size2 = CGSize(width: 10.0, height: 10.0)
        size1 += size2
        XCTAssert(size1 == CGSize(width: 20.0, height: 20.0))
    }

    func testMinusOperation() {
        let size1 = CGSize(width: 10.0, height: 10.0)
        let size2 = CGSize(width: 10.0, height: 10.0)
        XCTAssert(size1 - size2 == CGSize.zero)
    }

    func testMinusEqualOperation() {
        var size1 = CGSize(width: 10.0, height: 10.0)
        let size2 = CGSize(width: 10.0, height: 10.0)
        size1 -= size2
        XCTAssert(size1 == CGSize.zero)
    }

    func testMultiplicationOperation() {
        let size = CGSize(width: 5.0, height: 5.0)
        let scaledSize = size * 3
        XCTAssert(scaledSize == CGSize(width: 15.0, height: 15.0))
    }

    func testMultiplicationOperation_reversedOperands() {
        let size = CGSize(width: 5.0, height: 5.0)
        let scaledSize = 3 * size
        XCTAssert(scaledSize == CGSize(width: 15.0, height: 15.0))
    }

    func testMultiplicationEqualOperation() {
        var size = CGSize(width: 15.0, height: 15.0)
        size *= 2
        XCTAssert(size == CGSize(width: 30.0, height: 30.0))
    }

    func testDivisionOperation() {
        let size = CGSize(width: 30.0, height: 30.0)
        let scaledSize = size / 2
        XCTAssert(scaledSize == CGSize(width: 15.0, height: 15.0))
    }

    func testDivisionEqualOperation() {
        var size = CGSize(width: 30.0, height: 30.0)
        size /= 2
        XCTAssert(size == CGSize(width: 15.0, height: 15.0))
    }

    func testAbsoluteValue() {
        var size = CGSize(width: -3.0, height: -3.0)
        size.applyAbs()
        XCTAssert(size == CGSize(width: 3.0, height: 3.0))
    }

    func testOverloadedAbs() {
        let size = CGSize(width: -3.0, height: -3.0)
        XCTAssert(abs(size) == CGSize(width: 3.0, height: 3.0))
    }

    func testRound() {
        var size = CGSize(width: 20.15, height: 25.8)
        size.round()
        XCTAssert(size == CGSize(width: 20.0, height: 26.0))
    }

    func testOverloadedRound() {
        let size = CGSize(width: 20.15, height: 25.8)
        XCTAssert(round(size) == CGSize(width: 20.0, height: 26.0))
    }

    func testCeil() {
        var size = CGSize(width: 20.15, height: 25.8)
        size.ceil()
        XCTAssert(size == CGSize(width: 21.0, height: 26.0))
    }

    func testOverloadedCeil() {
        let size = CGSize(width: 20.15, height: 25.8)
        XCTAssert(ceil(size) == CGSize(width: 21.0, height: 26.0))
    }

    func testFloor() {
        var size = CGSize(width: 20.15, height: 25.8)
        size.floor()
        XCTAssert(size == CGSize(width: 20.0, height: 25.0))
    }

    func testOverloadedFloor() {
        let size = CGSize(width: 20.15, height: 25.8)
        XCTAssert(floor(size) == CGSize(width: 20.0, height: 25.0))
    }

}
