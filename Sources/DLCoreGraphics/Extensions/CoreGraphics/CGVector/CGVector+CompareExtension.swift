//
//  CGVector+CompareExtension.swift
//  DLCoreGraphics
//
//  Created by David Livadaru on 2/4/18.
//

import Foundation
import CoreGraphics

extension CGVector: Comparable {
    public static func < (lhs: CGVector, rhs: CGVector) -> Bool {
        return lhs.magnitude < rhs.magnitude
    }
}
