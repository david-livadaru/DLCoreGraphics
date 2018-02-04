//
//  UIEdgeInsetsTests.swift
//  DLCoreGraphicsTests
//
//  Created by David Livadaru on 2/4/18.
//

import XCTest
@testable import DLCoreGraphics

class UIEdgeInsetsTests: XCTestCase {
    func testInverseValue() {
        let insets = UIEdgeInsets(top: 1.0, left: 2.0, bottom: 3.0, right: 4.0)
        XCTAssert((-insets) == UIEdgeInsets(top: -1.0, left: -2.0, bottom: -3.0, right: -4.0))
    }

    func testVerticalInset() {
        let insets = UIEdgeInsets(top: 1.0, left: 2.0, bottom: 3.0, right: 4.0)
        XCTAssert(insets.verticalInset == 4.0)
    }

    func testHorizontalInset() {
        let insets = UIEdgeInsets(top: 1.0, left: 2.0, bottom: 3.0, right: 4.0)
        XCTAssert(insets.horizontalInset == 6.0)
    }
}
