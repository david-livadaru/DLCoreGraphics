//
//  CGSize+AbsoluteValueExtension.swift
//  DLCoreGraphics
//
//  Created by David Livadaru on 2/4/18.
//

import Foundation

extension CGSize: AbsoluteValueApplicable {
    mutating public func applyAbs() {
        width = abs(width)
        height = abs(height)
    }

    public func appliedAbs() -> CGSize {
        return CGSize(width: abs(width), height: abs(height))
    }
}
