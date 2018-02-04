//
//  CGPoint+AbsoluteValueExtension.swift
//  DLCoreGraphics
//
//  Created by David Livadaru on 2/4/18.
//

import Foundation
import CoreGraphics

extension CGPoint: AbsoluteValueApplicable {
    mutating public func applyAbs() {
        x = abs(x)
        y = abs(y)
    }

    public func appliedAbs() -> CGPoint {
        return CGPoint(x: abs(x), y: abs(y))
    }
}
