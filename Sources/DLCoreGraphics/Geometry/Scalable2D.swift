//
//  Scalable2D.swift
//  CoreGraphicsDLExtension
//
//  Created by David Livadaru on 2/19/17.
//

import Foundation

public protocol Scalable2D {
    // swiftlint:disable identifier_name
    /// Scales self on x and x axes.
    ///
    /// - Parameters:
    ///   - x: The x-axis scale factor.
    ///   - y: The y-axis scale factor.
    mutating func scale(byX x: CGFloat, y: CGFloat)

    /// Creates a scaled copy of self.
    ///
    /// - Parameters:
    ///   - x: The x-axis scale factor.
    ///   - y: The y-axis scale factor.
    /// - Returns: The scaled copy of self.
    func scaled(byX x: CGFloat, y: CGFloat) -> Self
    // swiftlint:enable identifier_name
}
