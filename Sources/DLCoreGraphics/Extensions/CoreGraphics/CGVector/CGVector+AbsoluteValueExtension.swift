//
//  CGVector+AbsoluteValueExtension.swift
//  DLCoreGraphics
//
//  Created by David Livadaru on 2/4/18.
//

import Foundation
import CoreGraphics

extension CGVector: AbsoluteValueApplicable {
    mutating public func applyAbs() {
        dx = abs(dx)
        dy = abs(dy)
    }

    public func appliedAbs() -> CGVector {
        return CGVector(dx: abs(dx), dy: abs(dy))
    }
}
