//
//  AbsoluteValueApplicable+FoundationExtension.swift
//  DLCoreGraphics
//
//  Created by David Livadaru on 2/4/18.
//

import Foundation

public func abs<Type: AbsoluteValueApplicable>(_ value: Type) -> Type {
    return value.appliedAbs()
}
