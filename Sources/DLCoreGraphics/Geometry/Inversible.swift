//
//  Inversible.swift
//  DLCoreGraphics
//
//  Created by David Livadaru on 2/4/18.
//

import Foundation

public protocol Inversible {
    /// Compute the inverse of self.
    ///
    /// - Parameter value: The value to be inversed.
    /// - Returns: The inverse of self.
    prefix static func - (_ value: Self) -> Self
}
