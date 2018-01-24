//
//  AbsoluteValueApplicable.swift
//  CoreGraphicsDLExtension
//
//  Created by David Livadaru on 2/19/17.
//

import Foundation

public protocol AbsoluteValueApplicable {
    mutating func applyAbs()
    func appliedAbs() -> Self
}

