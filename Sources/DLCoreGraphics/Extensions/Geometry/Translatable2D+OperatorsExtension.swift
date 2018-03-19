//
//  Translatable2D+OperatorsExtension.swift
//  DLCoreGraphics
//
//  Created by David Livadaru on 2/4/18.
//

import Foundation
import CoreGraphics

public extension Translatable2D {
    static func + (_ lhs: Self, _ rhs: CGPoint) -> Self {
        return lhs.translated(byX: rhs.x, y: rhs.y)
    }

    static func += (_ lhs: inout Self, _ rhs: CGPoint) {
        lhs.translate(byX: rhs.x, y: rhs.y)
    }

    static func - (_ lhs: Self, _ rhs: CGPoint) -> Self {
        return lhs + (-rhs)
    }

    static func -= (_ lhs: inout Self, _ rhs: CGPoint) {
        lhs += (-rhs)
    }

    static func + (_ lhs: Self, _ rhs: CGVector) -> Self {
        return lhs.translated(by: rhs)
    }

    static func += (_ lhs: inout Self, _ rhs: CGVector) {
        lhs.translate(by: rhs)
    }

    static func - (_ lhs: Self, _ rhs: CGVector) -> Self {
        return lhs + (-rhs)
    }

    static func -= (_ lhs: inout Self, _ rhs: CGVector) {
        lhs += (-rhs)
    }
}
