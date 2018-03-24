//
//  CGRectExtension.swift
//  DLCoreGraphics
//
//  Created by David Livadaru on 2/4/18.
//

import Foundation

/// An enumeration of rectangular sides.
///
/// - top: The top side.
/// - bottom: The bottom side.
/// - left: The left side.
/// - right: The right side.
public enum CGRectSide {
    case top, bottom, left, right
}

public extension CGRect {
    /// The point from rectangle with is positioned in the top left corner,
    var topLeft: CGPoint {
        return origin
    }

    /// The point from rectangle with is positioned in the top right corner,
    var topRight: CGPoint {
        return CGPoint(x: maxX, y: minY)
    }

    /// The point from rectangle with is positioned in the bottom left corner,
    var bottomLeft: CGPoint {
        return CGPoint(x: minX, y: maxY)
    }

    /// The point from rectangle with is positioned in the bottom right corner,
    var bottomRight: CGPoint {
        return CGPoint(x: maxX, y: maxY)
    }

    /// Compute the point which is positioned in the middle of the segment for a side.
    ///
    /// - Parameter side: The side for which the middle point is computed to.
    /// - Returns: The middle point.
    func middle(forSide side: CGRectSide) -> CGPoint {
        let segment = self.segment(forSide: side)
        return segment.middle
    }

    /// Construct the segment for side.
    ///
    /// - Parameter side: The side for which the segmented constructed.
    /// - Returns: The segment for the side.
    func segment(forSide side: CGRectSide) -> Segment {
        switch side {
        case .top:
            return Segment(start: topLeft, end: topRight)
        case .bottom:
            return Segment(start: bottomLeft, end: bottomRight)
        case .left:
            return Segment(start: topLeft, end: bottomLeft)
        case .right:
            return Segment(start: topRight, end: bottomRight)
        }
    }

    #if os(iOS) || os(tvOS)
    /// Inset the rectangle by using the insets without modifying the center of rectangle.
    ///
    /// If insets are positive, then self will shrink.
    ///
    /// if insets are negative, then self will expand.
    ///
    /// - Parameter insets: The insets to use for transforming the rectangle.
    mutating func inset(using insets: UIEdgeInsets) {
        origin.x += insets.left
        origin.y += insets.top
        size.width -= insets.horizontalInset
        size.height -= insets.verticalInset
    }

    /// Inset the rectangle by using the insets without modifying the center of rectangle.
    ///
    /// If insets are positive, then self will shrink.
    ///
    /// if insets are negative, then self will expand.
    ///
    /// - Parameter insets: The insets to use for transforming the rectangle.
    /// - Returns: The transformed
    func inseted(using insets: UIEdgeInsets) -> CGRect {
        var copy = self
        copy.inset(using: insets)
        return copy
    }
    #endif
}
