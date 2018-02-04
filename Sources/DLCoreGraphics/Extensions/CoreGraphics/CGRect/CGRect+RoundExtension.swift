//
//  CGRect+RoundExtension.swift
//  DLCoreGraphics
//
//  Created by David Livadaru on 2/4/18.
//

import Foundation
import CoreGraphics

extension CGRect: Roundable {
    mutating public func round() {
        origin.round()
        size.round()
    }

    public func rounded() -> CGRect {
        var copy = self
        copy.round()
        return copy
    }

    mutating public func ceil() {
        origin.ceil()
        size.ceil()
    }

    public func ceiling() -> CGRect {
        var copy = self
        copy.ceil()
        return copy
    }

    mutating public func floor() {
        origin.floor()
        size.floor()
    }

    public func flooring() -> CGRect {
        var copy = self
        copy.floor()
        return copy
    }
}
