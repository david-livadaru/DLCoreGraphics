//
//  CGRectExtension.swift
//  CoreGraphicsDLExtension
//
//  Created by David Livadaru on 2/20/17.
//
//

import Foundation
import CoreGraphics

// MARK: - AbsoluteValueApplicable
extension CGRect: AbsoluteValueApplicable {
    public mutating func applyAbs() {
        origin.applyAbs()
        size.applyAbs()
    }
    
    public func appliedAbs() -> CGRect {
        var other = self
        other.origin.applyAbs()
        other.size.applyAbs()
        return other
    }
}

// MARK: - Roundable
extension CGRect: Roundable {
    mutating public func round() {
        origin.round()
        size.round()
    }
    
    public func rounded() -> CGRect {
        var other = self
        other.origin.round()
        other.size.round()
        return other
    }
    
    mutating public func ceil() {
        origin.ceil()
        size.ceil()
    }
    
    public func ceiling() -> CGRect {
        var other = self
        other.origin.ceil()
        other.size.ceil()
        return other
    }
    
    mutating public func floor() {
        origin.floor()
        size.floor()
    }
    
    public func flooring() -> CGRect {
        var other = self
        other.origin.floor()
        other.size.floor()
        return other
    }
}

// MARK: - Transformable2D
extension CGRect: Transformable2D {
    // MARK: Translatable2D
    
    mutating public func translate(byX x: CGFloat, y: CGFloat) {
        self = applying(CGAffineTransform(translationX: x, y: y))
    }
    
    public func translated(byX x: CGFloat, y: CGFloat) -> CGRect {
        return applying(CGAffineTransform(translationX: x, y: y))
    }
    
    // MARK: Scalable2D
    
    mutating public func scale(byX x: CGFloat, y: CGFloat) {
        self = applying(CGAffineTransform(scaleX: x, y: y))
    }
    
    public func scaled(byX x: CGFloat, y: CGFloat) -> CGRect {
        return applying(CGAffineTransform(scaleX: x, y: y))
    }
}

