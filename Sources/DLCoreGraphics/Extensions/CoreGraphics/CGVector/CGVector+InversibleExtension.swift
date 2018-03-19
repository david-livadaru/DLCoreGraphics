//
//  CGVector+InversibleExtension.swift
//  DLCoreGraphics
//
//  Created by David Livadaru on 2/4/18.
//

import Foundation
import CoreGraphics

extension CGVector: Inversible {
    prefix public static func - (_ value: CGVector) -> CGVector {
        return CGVector(dx: -value.dx, dy: -value.dy)
    }
}
