//
//  CGRect+TranslateExtension.swift
//  DLCoreGraphics
//
//  Created by David Livadaru on 2/4/18.
//

import Foundation
import CoreGraphics

extension CGRect: Translatable2D {
    mutating public func translate(byX x: CGFloat, y: CGFloat) {
        self = applying(CGAffineTransform(translationX: x, y: y))
    }

    public func translated(byX x: CGFloat, y: CGFloat) -> CGRect {
        return applying(CGAffineTransform(translationX: x, y: y))
    }
}
