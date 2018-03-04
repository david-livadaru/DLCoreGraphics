//
//  TranslatableTests.swift
//  DLCoreGraphicsTests
//
//  Created by David Livadaru on 3/4/18.
//  Copyright © 2018 David Livadaru. All rights reserved.
//

import XCTest
@testable import DLCoreGraphics

class TranslatableTests: XCTestCase {
    func testPlusOperationWithCGVector() {
        let point = CGPoint(x: 1.0, y: 1.0)
        let vector = CGVector(dx: 0.0, dy: -1.0)
        let a = point + vector
        XCTAssert(a == CGPoint(x: 1.0, y: 0.0))
    }

    func testPlusEqualOperationWithCGVector() {
        var point = CGPoint(x: 3.0, y: -2.0)
        let vector = CGVector(dx: 2.0, dy: -1.0)
        point += vector
        XCTAssert(point == CGPoint(x: 5.0, y: -3.0))
    }

    func testMinusOperationWithCGVector() {
        let point = CGPoint(x: -2.0, y: 5.0)
        let vector = CGVector(dx: -3.0, dy: 2.0)
        XCTAssert(point - vector == CGPoint(x: 1.0, y: 3.0))
    }

    func testMinusEqualOperationWithCGVector() {
        var point = CGPoint(x: 2.0, y: -5.0)
        let vector = CGVector(dx: 2.0, dy: 2.0)
        point -= vector
        XCTAssert(point == CGPoint(x: 0.0, y: -7.0))
    }
}
