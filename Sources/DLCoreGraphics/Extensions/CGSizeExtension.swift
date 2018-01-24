//
//  CGSizeExtension.swift
//  CoreGraphicsDLExtension
//
//  Created by David Livadaru on 2/19/17.
//

import Foundation
import CoreGraphics

// MARK: - AbsoluteValueApplicable
extension CGSize: AbsoluteValueApplicable {
    mutating public func applyAbs() {
        width = abs(width)
        height = abs(height)
    }
    
    public func appliedAbs() -> CGSize {
        return CGSize(width: abs(width), height: abs(height))
    }
}

// MARK: - Roundable
extension CGSize: Roundable {
    mutating public func round() {
        width = CGFloat(Darwin.round(width))
        height = CGFloat(Darwin.round(height))
    }
    
    public func rounded() -> CGSize {
        return CGSize(width: Darwin.round(width),
                      height: Darwin.round(height))
    }
    
    mutating public func ceil() {
        width = CGFloat(Darwin.ceil(width))
        height = CGFloat(Darwin.ceil(height))
    }
    
    public func ceiling() -> CGSize {
        return CGSize(width: Darwin.ceil(width),
                      height: Darwin.ceil(height))
    }
    
    mutating public func floor(){
        width = CGFloat(Darwin.floor(width))
        height = CGFloat(Darwin.floor(height))
    }
    
    public func flooring() -> CGSize {
        return CGSize(width: Darwin.floor(width),
                      height: Darwin.floor(height))
    }
}

// MARK: - Scalable2D
extension CGSize: Scalable2D {
    public mutating func scale(byX x: CGFloat, y: CGFloat) {
        self = applying(CGAffineTransform(scaleX: x, y: y))
    }
    
    public func scaled(byX x: CGFloat, y: CGFloat) -> CGSize {
        return applying(CGAffineTransform(scaleX: x, y: y))
    }
}


// MARK: - Operators
extension CGSize {
    public static func +(lhs: CGSize, rhs: CGSize) -> CGSize {
        return CGSize(width: lhs.width + rhs.width, height: lhs.height + rhs.height)
    }
    
    public static func +=(lhs: inout CGSize, rhs: CGSize) {
        lhs.width += rhs.width
        lhs.height += rhs.height
    }
    
    public static func -(lhs: CGSize, rhs: CGSize) -> CGSize {
        return CGSize(width: lhs.width - rhs.width, height: lhs.height - rhs.height)
    }
    
    public static func -=(lhs: inout CGSize, rhs: CGSize) {
        lhs.width -= rhs.width
        lhs.height -= rhs.height
    }
}


