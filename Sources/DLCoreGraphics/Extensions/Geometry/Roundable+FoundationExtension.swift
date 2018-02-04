//
//  Roundable+FoundationExtension.swift
//  DLCoreGraphics
//
//  Created by David Livadaru on 2/4/18.
//

import Foundation

public func round<Type: Roundable>(_ value: Type) -> Type {
    return value.rounded()
}

public func ceil<Type: Roundable>(_ value: Type) -> Type {
    return value.ceiling()
}

public func floor<Type: Roundable>(_ value: Type) -> Type {
    return value.flooring()
}
