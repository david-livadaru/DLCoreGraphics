//
//  Translatable2D+OperatorsExtension.swift
//  DLCoreGraphics
//
//  Created by David Livadaru on 2/4/18.
//

import Foundation

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
}
