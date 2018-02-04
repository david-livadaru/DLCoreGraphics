//
//  CGVector+ScaleExtension.swift
//  DLCoreGraphics
//
//  Created by David Livadaru on 2/4/18.
//

import Foundation
import CoreGraphics

extension CGVector: Scalable2D {
    mutating public func scale(byX x: CGFloat, y: CGFloat) {
        dx *= x
        dy *= y
    }

    public func scaled(byX x: CGFloat, y: CGFloat) -> CGVector {
        return CGVector(dx: dx * x, dy: dy * y)
    }
}
