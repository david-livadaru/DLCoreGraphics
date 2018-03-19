//
//  CGPoint+InversibleExtension.swift
//  DLCoreGraphics
//
//  Created by David Livadaru on 2/4/18.
//

import Foundation
import CoreGraphics

extension CGPoint: Inversible {
    prefix public static func - (_ value: CGPoint) -> CGPoint {
        return CGPoint(x: -value.x, y: -value.y)
    }
}
