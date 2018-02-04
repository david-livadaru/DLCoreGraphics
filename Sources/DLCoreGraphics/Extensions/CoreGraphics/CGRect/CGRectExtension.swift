//
//  CGRectExtension.swift
//  DLCoreGraphics
//
//  Created by David Livadaru on 2/4/18.
//

import Foundation
import CoreGraphics

public enum CGRectSide {
    case top, bottom, left, right
}

public extension CGRect {
    var topLeft: CGPoint {
        return origin
    }

    var topRight: CGPoint {
        return CGPoint(x: maxX, y: minY)
    }

    var bottomLeft: CGPoint {
        return CGPoint(x: minX, y: maxY)
    }

    var bottomRight: CGPoint {
        return CGPoint(x: maxX, y: maxY)
    }

    func middle(forSide side: CGRectSide) -> CGPoint {
        let segment = self.segment(forSide: side)
        return segment.middle
    }

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

    mutating func inset(using insets: UIEdgeInsets) {
        origin.x += insets.left
        origin.y += insets.top
        size.width -= insets.right
        size.height -= insets.bottom
    }

    func inseted(using insets: UIEdgeInsets) -> CGRect {
        var copy = self
        copy.inset(using: insets)
        return copy
    }
}
