//
//  Roundable+UIScreenExtension.swift
//  DLCoreGraphics
//
//  Created by David Livadaru on 2/4/18.
//

#if os(iOS) || os(tvOS)
import UIKit

public extension Roundable where Self : Scalable2D {
    mutating func screenRound() {
        self *= UIScreen.main.scale
        round()
        self /= UIScreen.main.scale
    }

    func screenRounded() -> Self {
        var copy = self
        copy *= UIScreen.main.scale
        copy.round()
        copy /= UIScreen.main.scale
        return copy
    }

    mutating func screenCeil() {
        self *= UIScreen.main.scale
        ceil()
        self /= UIScreen.main.scale
    }

    func screenCeiling() -> Self {
        var copy = self
        copy *= UIScreen.main.scale
        copy.ceil()
        copy /= UIScreen.main.scale
        return copy
    }

    mutating func screenFloor() {
        self *= UIScreen.main.scale
        floor()
        self /= UIScreen.main.scale
    }

    func screenFlooring() -> Self {
        var copy = self
        copy *= UIScreen.main.scale
        copy.floor()
        copy /= UIScreen.main.scale
        return copy
    }
}

public func screenRound<Type: Roundable & Scalable2D>(_ value: Type) -> Type {
    return value.screenRounded()
}

public func screenCeil<Type: Roundable & Scalable2D>(_ value: Type) -> Type {
    return value.screenCeiling()
}

public func screenFloor<Type: Roundable & Scalable2D>(_ value: Type) -> Type {
    return value.screenFlooring()
}
#endif
