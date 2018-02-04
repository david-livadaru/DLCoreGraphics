//
//  CGPoint+RoundExtension.swift
//  DLCoreGraphics
//
//  Created by David Livadaru on 2/4/18.
//

import Foundation
import CoreGraphics

extension CGPoint: Roundable {
    mutating public func round() {
        x = Darwin.round(x)
        y = Darwin.round(y)
    }

    public func rounded() -> CGPoint {
        return CGPoint(x: Darwin.round(x), y: Darwin.round(y))
    }

    mutating public func ceil() {
        x = Darwin.ceil(x)
        y = Darwin.ceil(y)
    }

    public func ceiling() -> CGPoint {
        return CGPoint(x: Darwin.ceil(x), y: Darwin.ceil(y))
    }

    mutating public func floor() {
        x = Darwin.floor(x)
        y = Darwin.floor(y)
    }

    public func flooring() -> CGPoint {
        return CGPoint(x: Darwin.floor(x), y: Darwin.floor(y))
    }
}
