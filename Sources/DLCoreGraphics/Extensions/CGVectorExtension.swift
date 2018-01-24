//
//  CGVectorExtension.swift
//  CoreGraphicsDLExtension
//
//  Created by David Livadaru on 2/20/17.
//

import Foundation
import DLAngle

public extension CGVector {
    var magnitude: CGFloat {
        return sqrt(pow(dx, 2.0) + pow(dy, 2.0))
    }

    var angle: Radian? {
        return try? Radian(atan2Y: dy, x: dx)
    }
}

// MARK: - AbsoluteValueApplicable
extension CGVector: AbsoluteValueApplicable {
    mutating public func applyAbs() {
        dx = abs(dx)
        dy = abs(dy)
    }
    
    public func appliedAbs() -> CGVector {
        return CGVector(dx: abs(dx), dy: abs(dy))
    }
}

// MARK: - Roundable
extension CGVector: Roundable {
    mutating public func round() {
        dx = Darwin.round(dx)
        dy = Darwin.round(dy)
    }
    
    public func rounded() -> CGVector {
        return CGVector(dx: Darwin.round(dx),
                       dy: Darwin.round(dy))
    }
    
    mutating public func ceil() {
        dx = CGFloat(Darwin.ceil(dx))
        dy = CGFloat(Darwin.ceil(dy))
    }
    
    public func ceiling() -> CGVector {
        return CGVector(dx: Darwin.ceil(dx),
                       dy: Darwin.ceil(dy))
    }
    
    mutating public func floor(){
        dx = CGFloat(Darwin.floor(dx))
        dy = CGFloat(Darwin.floor(dy))
    }
    
    public func flooring() -> CGVector {
        return CGVector(dx: Darwin.floor(dx),
                       dy: Darwin.floor(dy))
    }
}

// MARK: - Scalable2D
extension CGVector: Scalable2D {
    mutating public func scale(byX x: CGFloat, y: CGFloat) {
        dx *= x
        dy *= y
    }
    
    public func scaled(byX x: CGFloat, y: CGFloat) -> CGVector {
        return CGVector(dx: dx * x, dy: dy * y)
    }
}

// MARK: - Comparable
extension CGVector: Comparable {
    public static func <(lhs: CGVector, rhs: CGVector) -> Bool {
        return lhs.magnitude < rhs.magnitude
    }
}

// MARK: - Operators
extension CGVector {
    public static func +(lhs: CGVector, rhs: CGVector) -> CGVector {
        return CGVector(dx: lhs.dx + rhs.dx, dy: lhs.dy + rhs.dy)
    }
    
    public static func +=(lhs: inout CGVector, rhs: CGVector) {
        lhs.dx += rhs.dx
        lhs.dy += rhs.dy
    }
    
    public static func -(lhs: CGVector, rhs: CGVector) -> CGVector {
        return CGVector(dx: lhs.dx - rhs.dx, dy: lhs.dy - rhs.dy)
    }
    
    public static func -=(lhs: inout CGVector, rhs: CGVector) {
        lhs.dx -= rhs.dx
        lhs.dy -= rhs.dy
    }
    
    public static prefix func -(vector: CGVector) -> CGVector {
        return CGVector(dx: -vector.dx, dy: -vector.dy)
    }
    
    public static func *(lhs: CGVector, rhs: CGFloat) -> CGVector {
        return CGVector(dx: lhs.dx * rhs, dy: lhs.dy * rhs)
    }
    
    public static func *(lhs: CGFloat, rhs: CGVector) -> CGVector {
        return CGVector(dx: lhs * rhs.dx, dy: lhs * rhs.dy)
    }
    
    public static func *=(lhs: inout CGVector, rhs: CGFloat) {
        lhs.dx *= rhs
        lhs.dy *= rhs
    }
    
    public static func /(lhs: CGVector, rhs: CGFloat) -> CGVector {
        return CGVector(dx: lhs.dx / rhs, dy: lhs.dy / rhs)
    }
    
    public static func /=(lhs: inout CGVector, rhs: CGFloat) {
        lhs.dx /= rhs
        lhs.dy /= rhs
    }
}

