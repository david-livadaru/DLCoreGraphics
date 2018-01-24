//
//  CGFloat+FrameworkExtension.swift
//  DLCoreGraphicsTests
//
//  Created by David Livadaru on 1/24/18.
//

import CoreGraphics

extension CGFloat {
    func equals(to other: CGFloat, precision: Int = 15) -> Bool {
        let diff = self - other
        let argument = Swift.max(Double(-precision), 15.0)
        return abs(diff) < CGFloat(pow(10.0, argument))
    }
}
