//
//  CGVector+RoundExtension.swift
//  DLCoreGraphics
//
//  Created by David Livadaru on 2/4/18.
//

import Foundation
import CoreGraphics

extension CGVector: Roundable {
    mutating public func round() {
        dx = Darwin.round(dx)
        dy = Darwin.round(dy)
    }

    public func rounded() -> CGVector {
        return CGVector(dx: Darwin.round(dx), dy: Darwin.round(dy))
    }

    mutating public func ceil() {
        dx = Darwin.ceil(dx)
        dy = Darwin.ceil(dy)
    }

    public func ceiling() -> CGVector {
        return CGVector(dx: Darwin.ceil(dx), dy: Darwin.ceil(dy))
    }

    mutating public func floor() {
        dx = Darwin.floor(dx)
        dy = Darwin.floor(dy)
    }

    public func flooring() -> CGVector {
        return CGVector(dx: Darwin.floor(dx), dy: Darwin.floor(dy))
    }
}
