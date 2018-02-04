//
//  CGSize+ScaleExtension.swift
//  DLCoreGraphics
//
//  Created by David Livadaru on 2/4/18.
//

import Foundation
import CoreGraphics

extension CGSize: Scalable2D {
    public mutating func scale(byX x: CGFloat, y: CGFloat) {
        self = applying(CGAffineTransform(scaleX: x, y: y))
    }

    public func scaled(byX x: CGFloat, y: CGFloat) -> CGSize {
        return applying(CGAffineTransform(scaleX: x, y: y))
    }
}
