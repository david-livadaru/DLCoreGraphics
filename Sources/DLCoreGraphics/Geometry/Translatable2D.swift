//
//  Translatable2D.swift
//  CoreGraphicsDLExtension
//
//  Created by David Livadaru on 2/19/17.
//

import Foundation
import CoreGraphics

public protocol Translatable2D {
    // swiftlint:disable identifier_name
    /// Translates self
    ///
    /// - Parameters:
    ///   - x: The x offset used for translation.
    ///   - y: The y offset used for translation.
    mutating func translate(byX x: CGFloat, y: CGFloat)
    /// Creates a translated copy of self.
    ///
    /// - Parameters:
    ///   - x: The x offset used for translation.
    ///   - y: The y offset used for translation.
    /// - Returns: The translated copy of self.
    func translated(byX x: CGFloat, y: CGFloat) -> Self
    // swiftlint:enable identifier_name
}
