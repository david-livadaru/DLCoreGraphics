//
//  CGVectorExtension.swift
//  CoreGraphicsDLExtension
//
//  Created by David Livadaru on 2/20/17.
//

import Foundation
import CoreGraphics
import DLAngle

public extension CGVector {
    /// The length of the vector segment.
    var magnitude: CGFloat {
        return sqrt(pow(dx, 2.0) + pow(dy, 2.0))
    }

    /// The angle the vector form with positive x-axis.
    var direction: Radian? {
        return try? Radian(atan2Y: dy, x: dx)
    }
}
