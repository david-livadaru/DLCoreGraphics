//
//  CGRectTests.swift
//  DLCoreGraphicsTests
//
//  Created by David Livadaru on 2/4/18.
//

import XCTest
@testable import DLCoreGraphics

class CGRectTests: XCTestCase {
    func testPlusOperation() {
        let rect = CGRect(x: 0.0, y: 0.0, width: 5.0, height: 5.0)
        let point = CGPoint(x: 1.0, y: 2.0)
        let translatedRect = rect + point
        XCTAssert(translatedRect == CGRect(x: 1.0, y: 2.0, width: 5.0, height: 5.0))
    }

    func testPlusEqualOperation() {
        var rect = CGRect(x: 0.0, y: 0.0, width: 5.0, height: 5.0)
        let point = CGPoint(x: 1.0, y: 2.0)
        rect += point
        XCTAssert(rect == CGRect(x: 1.0, y: 2.0, width: 5.0, height: 5.0))
    }

    func testMinusOperation() {
        let rect = CGRect(x: 0.0, y: 0.0, width: 5.0, height: 5.0)
        let point = CGPoint(x: 1.0, y: 2.0)
        let translatedRect = rect - point
        XCTAssert(translatedRect == CGRect(x: -1.0, y: -2.0, width: 5.0, height: 5.0))
    }

    func testMinusEqualOperation() {
        var rect = CGRect(x: 0.0, y: 0.0, width: 5.0, height: 5.0)
        let point = CGPoint(x: 1.0, y: 2.0)
        rect -= (-point)
        XCTAssert(rect == CGRect(x: 1.0, y: 2.0, width: 5.0, height: 5.0))
    }

    func testMultiplicationOperation() {
        let rect = CGRect(x: 1.0, y: 1.0, width: 10.0, height: 10.0)
        let scaledRect = rect * 2
        XCTAssert(scaledRect == CGRect(x: 2.0, y: 2.0, width: 20.0, height: 20.0))
    }

    func testMultiplicationOperation_reversedOperands() {
        let rect = CGRect(x: 1.0, y: 1.0, width: 10.0, height: 10.0)
        let scaledRect = 2 * rect
        XCTAssert(scaledRect == CGRect(x: 2.0, y: 2.0, width: 20.0, height: 20.0))
    }

    func testMultiplicationEqualOperation() {
        var rect = CGRect(x: 1.0, y: 1.0, width: 10.0, height: 10.0)
        rect *= 2
        XCTAssert(rect == CGRect(x: 2.0, y: 2.0, width: 20.0, height: 20.0))
    }

    func testDivisionOperation() {
        let rect = CGRect(x: 3.0, y: 3.0, width: 30.0, height: 30.0)
        let scaledRect = rect / 3
        XCTAssert(scaledRect == CGRect(x: 1.0, y: 1.0, width: 10.0, height: 10.0))
    }

    func testDivisionEqualOperation() {
        var rect = CGRect(x: 3.0, y: 3.0, width: 30.0, height: 30.0)
        rect /= 3
        XCTAssert(rect == CGRect(x: 1.0, y: 1.0, width: 10.0, height: 10.0))
    }

    func testVertexPoints() {
        let rect = CGRect(x: 3.0, y: 3.0, width: 30.0, height: 30.0)
        XCTAssert(rect.topLeft == CGPoint(x: 3.0, y: 3.0))
        XCTAssert(rect.topRight == CGPoint(x: 33.0, y: 3.0))
        XCTAssert(rect.bottomLeft == CGPoint(x: 3.0, y: 33.0))
        XCTAssert(rect.bottomRight == CGPoint(x: 33.0, y: 33.0))
    }
    func testMiddlePoints() {
        let rect = CGRect(x: 2.0, y: 3.0, width: 10.0, height: 10.0)
        XCTAssert(rect.middle(forSide: .top) == CGPoint(x: 7.0, y: 3.0))
        XCTAssert(rect.middle(forSide: .bottom) == CGPoint(x: 7.0, y: 13.0))
        XCTAssert(rect.middle(forSide: .left) == CGPoint(x: 2.0, y: 8.0))
        XCTAssert(rect.middle(forSide: .right) == CGPoint(x: 12.0, y: 8.0))
    }

    func testInsetingUsingEdgeInsets() {
        let rect = CGRect(x: 0.0, y: 0.0, width: 10.0, height: 10.0)
        let insets = UIEdgeInsets(top: 1.0, left: 1.0, bottom: 1.0, right: 1.0)
        XCTAssert(rect.inseted(using: -insets) == CGRect(x: -1.0, y: -1.0, width: 11.0, height: 11.0))
    }
}
