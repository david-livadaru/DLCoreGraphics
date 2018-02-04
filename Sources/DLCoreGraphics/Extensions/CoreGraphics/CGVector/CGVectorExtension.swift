//
//  CGVectorExtension.swift
//  CoreGraphicsDLExtension
//
//  Created by David Livadaru on 2/20/17.
//

import Foundation
import DLAngle

public extension CGVector {
    var magnitude: CGFloat {
        return sqrt(pow(dx, 2.0) + pow(dy, 2.0))
    }

    var angle: Radian? {
        return try? Radian(atan2Y: dy, x: dx)
    }
}
