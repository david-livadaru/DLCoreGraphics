//
//  Roundable.swift
//  CoreGraphicsDLExtension
//
//  Created by David Livadaru on 2/19/17.
//

import Foundation

public protocol Roundable {
    /// Performs round operation on self.
    mutating func round()
    /// Creates a rounded copy of self.
    ///
    /// - Returns: The rounded copy of self.
    func rounded() -> Self

    /// Performs ceil operation on self.
    mutating func ceil()
    /// Creates a ceilling copy of self.
    ///
    /// - Returns: The ceilling copy of self.
    func ceiling() -> Self

    /// Performs floor operation on self.
    mutating func floor()
    /// Creates a flooring copy of self.
    ///
    /// - Returns: The flooring copy of self.
    func flooring() -> Self
}
