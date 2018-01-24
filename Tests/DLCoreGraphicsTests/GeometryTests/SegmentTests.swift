//
//  SegmentTests.swift
//  DLCoreGraphicsTests
//
//  Created by David Livadaru on 1/24/18.
//

import XCTest
@testable import DLCoreGraphics
import DLAngle

class SegmentTests: XCTestCase {
    func testConstructor() {
        let start = CGPoint(x: 0.0, y: 1.0)
        let end = CGPoint(x: 1.0, y: 2.0)
        let segment = Segment(start: start, end: end)
        XCTAssert(segment.start == start)
        XCTAssert(segment.end == end)
    }

    func testSegmentSlope() {
        let start = CGPoint(x: 0.0, y: 1.0)
        let end = CGPoint(x: 1.0, y: 2.0)
        let segment = Segment(start: start, end: end)
        XCTAssert(segment.slope?.equals(to: 1.0) == true)
    }

    func testSegmentZeroSlope() {
        let start = CGPoint(x: 0.0, y: 1.0)
        let end = CGPoint(x: 1.0, y: 1.0)
        let segment = Segment(start: start, end: end)
        XCTAssert(segment.slope?.equals(to: 0.0) == true)
    }

    func testSegmentUndefinedSlope() {
        let start = CGPoint(x: 0.0, y: 1.0)
        let end = CGPoint(x: 0.0, y: 2.0)
        let segment = Segment(start: start, end: end)
        XCTAssertNil(segment.slope)
    }

    func testSegmentAngleFormedWithSameSegment() {
        let segment1 = Segment(start: CGPoint(x: 0.0, y: 1.0), end: CGPoint(x: 2.0, y: 1.0))
        let segment2 = Segment(start: CGPoint(x: 0.0, y: 1.0), end: CGPoint(x: 2.0, y: 1.0))
        let angle = segment1.angleFormed(with: segment2)
        XCTAssert(angle == Radian())
    }

    func testSegmentAngleFormedWithOtherSegment() {
        let segment1 = Segment(start: CGPoint(x: 0.0, y: 0.0), end: CGPoint(x: 4.0, y: 0.0))
        let segment2 = Segment(start: CGPoint(x: 1.0, y: 2.0), end: CGPoint(x: 4.0, y: 5.0))
        let angle = segment1.angleFormed(with: segment2)
        XCTAssert(angle == Radian.pi_4)
    }

    func testSegmentAngleFormedWithOtherSegment2() {
        let segment1 = Segment(start: CGPoint(x: 0.0, y: 0.0), end: CGPoint(x: -5.0, y: -5.0))
        let segment2 = Segment(start: CGPoint(x: 2.0, y: 2.0), end: CGPoint(x: 5.0, y: 7.0))
        let angle = segment1.angleFormed(with: segment2)
        let expectedAngle = Radian(rawValue: 0.244978663126864)
        XCTAssert(angle == expectedAngle)
    }

    func testMiddlePoint() {
        let segment = Segment(start: CGPoint(x: 0.0, y: 0.0), end: CGPoint(x: 4.0, y: 0.0))
        XCTAssert(segment.middle == CGPoint(x: 2.0, y: 0.0))
    }

    func testMiddlePoint2() {
        let segment = Segment(start: CGPoint(x: 0.0, y: 0.0), end: CGPoint(x: 4.0, y: 4.0))
        XCTAssert(segment.middle == CGPoint(x: 2.0, y: 2.0))
    }
}
