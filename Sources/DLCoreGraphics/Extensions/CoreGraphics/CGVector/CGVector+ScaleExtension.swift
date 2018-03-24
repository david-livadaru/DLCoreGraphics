//
//  CGVector+ScaleExtension.swift
//  DLCoreGraphics
//
//  Created by David Livadaru on 2/4/18.
//

import Foundation

extension CGVector: Scalable2D {
    // swiftlint:disable:next identifier_name
    mutating public func scale(byX x: CGFloat, y: CGFloat) {
        dx *= x
        dy *= y
    }

    // swiftlint:disable:next identifier_name
    public func scaled(byX x: CGFloat, y: CGFloat) -> CGVector {
        return CGVector(dx: dx * x, dy: dy * y)
    }
}
