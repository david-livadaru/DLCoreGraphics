//
//  CGPoint+TranslateExtension.swift
//  DLCoreGraphics
//
//  Created by David Livadaru on 2/4/18.
//

import Foundation

extension CGPoint: Translatable2D {
    // swiftlint:disable:next identifier_name
    mutating public func translate(byX x: CGFloat, y: CGFloat) {
        self = applying(CGAffineTransform(translationX: x, y: y))
    }

    // swiftlint:disable:next identifier_name
    public func translated(byX x: CGFloat, y: CGFloat) -> CGPoint {
        return applying(CGAffineTransform(translationX: x, y: y))
    }
}
