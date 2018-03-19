//
//  Scalable2D+OperatorsExtension.swift
//  DLCoreGraphics
//
//  Created by David Livadaru on 2/4/18.
//

import Foundation
import CoreGraphics

public extension Scalable2D {
    static func * (_ lhs: Self, _ rhs: CGFloat) -> Self {
        return lhs.scaled(byX: rhs, y: rhs)
    }

    static func * (_ lhs: CGFloat, _ rhs: Self) -> Self {
        return rhs * lhs
    }

    static func *= (_ lhs: inout Self, _ rhs: CGFloat) {
        lhs.scale(byX: rhs, y: rhs)
    }

    static func / (_ lhs: Self, _ rhs: CGFloat) -> Self {
        let ratio = 1.0 / rhs
        return lhs.scaled(byX: ratio, y: ratio)
    }

    static func /= (_ lhs: inout Self, _ rhs: CGFloat) {
        let ratio = 1.0 / rhs
        lhs.scale(byX: ratio, y: ratio)
    }
}
