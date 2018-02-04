//
//  Inversible.swift
//  DLCoreGraphics
//
//  Created by David Livadaru on 2/4/18.
//

import Foundation

public protocol Inversible {
    prefix static func - (_ value: Self) -> Self
}
