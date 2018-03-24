//
//  CGSize+ScaleExtension.swift
//  DLCoreGraphics
//
//  Created by David Livadaru on 2/4/18.
//

import Foundation

extension CGSize: Scalable2D {
    // swiftlint:disable:next identifier_name
    public mutating func scale(byX x: CGFloat, y: CGFloat) {
        self = applying(CGAffineTransform(scaleX: x, y: y))
    }

    // swiftlint:disable:next identifier_name
    public func scaled(byX x: CGFloat, y: CGFloat) -> CGSize {
        return applying(CGAffineTransform(scaleX: x, y: y))
    }
}
