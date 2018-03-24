//
//  Segment.swift
//  DLCoreGraphics
//
//  Created by David Livadaru on 1/24/18.
//

import Foundation
import DLAngle

/// A type which defines the mathematical segment.
public struct Segment: Equatable {
    /// Start point of the segment.
    public let start: CGPoint
    /// End point of the segment.
    public let end: CGPoint

    /// The middle point of the segment.
    public var middle: CGPoint {
        return CGPoint(x: (end.x + start.x) / 2, y: (end.y + start.y) / 2)
    }

    /// The slope the segment.
    ///
    /// If the segment is || with Ox then the slope is 0.0.
    ///
    /// If the segment is || with Oy then the slope is undefined.
    public var slope: CGFloat? {
        guard start.x != end.x else { return nil }

        return (end.y - start.y) / (end.x - start.x)
    }

    /// Create a segment with a start and end points.
    ///
    /// - Parameters:
    ///   - start: The start point.
    ///   - end: The end point.
    public init(start: CGPoint, end: CGPoint) {
        self.start = start
        self.end = end
    }

    /// Find the angle between self and other segment.
    ///
    /// If slope for self or other is undefined, then the angle cannot be computed.
    ///
    /// - Parameter other: The segment to
    /// - Returns: The computed angle, or nil if not possible.
    func angleFormed(with other: Segment) -> Radian? {
        guard self != other else { return Radian() }
        guard let selfSlope = slope else { return nil }
        guard let otherSlope = other.slope else { return nil }

        let slopeProduct = selfSlope * otherSlope
        if slopeProduct == -1.0 {
            return Radian.pi_2
        }

        let argument = (selfSlope - otherSlope) / (1 + slopeProduct)

        return try? Radian(atan: abs(argument))
    }

    /// The segments are equal if they have the same start and end points.
    ///
    /// - Parameters:
    ///   - lhs: The left hand side value.
    ///   - rhs: The right hand side value.
    /// - Returns: True if segments equal, false otherwise.
    public static func == (_ lhs: Segment, _ rhs: Segment) -> Bool {
        return lhs.start == rhs.start && lhs.end == rhs.end
    }
}
