//
//  CGSize+RoundExtension.swift
//  DLCoreGraphics
//
//  Created by David Livadaru on 2/4/18.
//

import Foundation
import CoreGraphics

extension CGSize: Roundable {
    mutating public func round() {
        width = Darwin.round(width)
        height = Darwin.round(height)
    }

    public func rounded() -> CGSize {
        return CGSize(width: Darwin.round(width), height: Darwin.round(height))
    }

    mutating public func ceil() {
        width = Darwin.ceil(width)
        height = Darwin.ceil(height)
    }

    public func ceiling() -> CGSize {
        return CGSize(width: Darwin.ceil(width), height: Darwin.ceil(height))
    }

    mutating public func floor() {
        width = Darwin.floor(width)
        height = Darwin.floor(height)
    }

    public func flooring() -> CGSize {
        return CGSize(width: Darwin.floor(width), height: Darwin.floor(height))
    }
}
