//
//  UIScreenRoundable.swift
//  DLCoreGraphicsTests
//
//  Created by David Livadaru on 3/4/18.
//  Copyright © 2018 David Livadaru. All rights reserved.
//

import XCTest
@testable import DLCoreGraphics

class UIScreenRoundable: XCTestCase {
    func testRoundable() {
        let point = CGPoint(x: 1.2, y: 3.6)
        let screenRoundedPoint = screenRound(point)
        switch UIScreen.main.scale {
        case 1:
            XCTAssert(screenRoundedPoint == CGPoint(x: 1.0, y: 4.0))
        case 2:
            XCTAssert(screenRoundedPoint == CGPoint(x: 1.0, y: 3.5))
        case 3:
            XCTAssert(screenRoundedPoint == CGPoint(x: 1.0 + 1.0 / 3, y: 3 + 2.0 / 3))
        default:
            XCTFail("Scale not supported")
        }
    }

    func testRoundable2() {
        var point = CGPoint(x: 1.1, y: 3.76)
        point.screenRound()
        switch UIScreen.main.scale {
        case 1:
            XCTAssert(point == CGPoint(x: 1.0, y: 4.0))
        case 2:
            XCTAssert(point == CGPoint(x: 1.0, y: 4.0))
        case 3:
            XCTAssert(point == CGPoint(x: 1.0, y: 3 + 2.0 / 3))
        default:
            XCTFail("Scale not supported")
        }
    }

    func testFloor() {
        let point = CGPoint(x: 1.2, y: 3.6)
        let screenFlooringPoint = screenFloor(point)
        switch UIScreen.main.scale {
        case 1:
            XCTAssert(screenFlooringPoint == CGPoint(x: 1.0, y: 3.0))
        case 2:
            XCTAssert(screenFlooringPoint == CGPoint(x: 1.0, y: 3.5))
        case 3:
            XCTAssert(screenFlooringPoint.x.equals(to: 1.0))
            XCTAssert(screenFlooringPoint.y.equals(to: 3.33, precision: 2))
        default:
            XCTFail("Scale not supported")
        }
    }

    func testFloor2() {
        var point = CGPoint(x: 1.1, y: 3.76)
        point.screenFloor()
        switch UIScreen.main.scale {
        case 1:
            XCTAssert(point == CGPoint(x: 1.0, y: 3.0))
        case 2:
            XCTAssert(point == CGPoint(x: 1.0, y: 3.5))
        case 3:
            XCTAssert(point == CGPoint(x: 1.0, y: 3 + 2.0 / 3))
        default:
            XCTFail("Scale not supported")
        }
    }

    func testCeil() {
        let point = CGPoint(x: 1.2, y: 3.6)
        let screenCeilingPoint = screenCeil(point)
        switch UIScreen.main.scale {
        case 1:
            XCTAssert(screenCeilingPoint == CGPoint(x: 2.0, y: 4.0))
        case 2:
            XCTAssert(screenCeilingPoint == CGPoint(x: 1.5, y: 4.0))
        case 3:
            XCTAssert(screenCeilingPoint.x.equals(to: 1.33, precision: 2))
            XCTAssert(screenCeilingPoint.y.equals(to: 3.66, precision: 2))
        default:
            XCTFail("Scale not supported")
        }
    }

    func testCeil2() {
        var point = CGPoint(x: 1.1, y: 3.76)
        point.screenCeil()
        switch UIScreen.main.scale {
        case 1:
            XCTAssert(point == CGPoint(x: 2.0, y: 4.0))
        case 2:
            XCTAssert(point == CGPoint(x: 1.5, y: 4.0))
        case 3:
            XCTAssert(point.x.equals(to: 1.33, precision: 2))
            XCTAssert(point.y.equals(to: 4.0))
        default:
            XCTFail("Scale not supported")
        }
    }
}
