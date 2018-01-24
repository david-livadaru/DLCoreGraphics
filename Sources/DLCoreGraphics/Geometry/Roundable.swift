//
//  Roundable.swift
//  CoreGraphicsDLExtension
//
//  Created by David Livadaru on 2/19/17.
//

import Foundation

public protocol Roundable {
    mutating func round()
    func rounded() -> Self
    
    mutating func ceil()
    func ceiling() -> Self
    
    mutating func floor()
    func flooring() -> Self
}

