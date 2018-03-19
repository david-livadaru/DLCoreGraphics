//
//  AbsoluteValueApplicable.swift
//  CoreGraphicsDLExtension
//
//  Created by David Livadaru on 2/19/17.
//

import Foundation

public protocol AbsoluteValueApplicable {
    /// Apply the absolute value to self.
    mutating func applyAbs()
    /// Computes the absolute value.
    ///
    /// - Returns: Returns the the absolute value.
    func appliedAbs() -> Self
}
