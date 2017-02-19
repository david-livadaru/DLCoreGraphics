//
//  CGPointExtension.swift
//  CoreGraphicsDLExtension
//
//  Created by David Livadaru on 2/19/17.
//
//

import Foundation
import CoreGraphics

// MARK: - AbsoluteValueApplicable
extension CGPoint: AbsoluteValueApplicable {
    mutating public func applyAbs() {
        x = abs(x)
        y = abs(y)
    }
    
    public func appliedAbs() -> CGPoint {
        return CGPoint(x: abs(x), y: abs(y))
    }
}

// MARK: - Roundable
extension CGPoint: Roundable {
    mutating public func round() {
        x = Darwin.round(x)
        y = Darwin.round(y)
    }
    
    public func rounded() -> CGPoint {
        return CGPoint(x: Darwin.round(x),
                       y: Darwin.round(y))
    }
    
    mutating public func ceil() {
        x = CGFloat(Darwin.ceil(x))
        y = CGFloat(Darwin.ceil(y))
    }
    
    public func ceiling() -> CGPoint {
        return CGPoint(x: Darwin.ceil(x),
                       y: Darwin.ceil(y))
    }
    
    mutating public func floor(){
        x = CGFloat(Darwin.floor(x))
        y = CGFloat(Darwin.floor(y))
    }
    
    public func flooring() -> CGPoint {
        return CGPoint(x: Darwin.floor(x),
                       y: Darwin.floor(y))
    }
}

// MARK: - Translatable2D
extension CGPoint: Translatable2D {
    mutating public func translate(byX x: CGFloat, y: CGFloat) {
        self = applying(CGAffineTransform(translationX: x, y: y))
    }
    
    public func translated(byX x: CGFloat, y: CGFloat) -> CGPoint {
        return applying(CGAffineTransform(translationX: x, y: y))
    }
}

// MARK: - Operators
extension CGPoint {
    public static func -(lhs: CGPoint, rhs: CGPoint) -> CGVector {
        return CGVector(dx: lhs.x - rhs.x, dy: lhs.y - rhs.y)
    }
    
    public static prefix func -(point: CGPoint) -> CGPoint {
        return CGPoint(x: -point.x, y: -point.y)
    }
}

