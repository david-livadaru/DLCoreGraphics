//
//  Scalable2D.swift
//  CoreGraphicsDLExtension
//
//  Created by David Livadaru on 2/19/17.
//
//

import Foundation
import CoreGraphics

public protocol Scalable2D {
    mutating func scale(byX x: CGFloat, y: CGFloat)
    func scaled(byX x: CGFloat, y: CGFloat) -> Self
}

