//
//  CGRect+AbsoluteValueExtension.swift
//  DLCoreGraphics
//
//  Created by David Livadaru on 2/4/18.
//

import Foundation

extension CGRect: AbsoluteValueApplicable {
    public mutating func applyAbs() {
        origin.applyAbs()
        size.applyAbs()
    }

    public func appliedAbs() -> CGRect {
        var copy = self
        copy.applyAbs()
        return copy
    }
}
