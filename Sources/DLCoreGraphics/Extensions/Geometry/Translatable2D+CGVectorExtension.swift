//
//  Translatable2D+CGVectorExtension.swift
//  DLCoreGraphics
//
//  Created by David Livadaru on 2/4/18.
//

import Foundation
import CoreGraphics

public extension Translatable2D {
    mutating func translate(by vector: CGVector) {
        translate(byX: vector.dx, y: vector.dy)
    }

    func translated(by vector: CGVector) -> Self {
        return translated(byX: vector.dx, y: vector.dy)
    }
}
