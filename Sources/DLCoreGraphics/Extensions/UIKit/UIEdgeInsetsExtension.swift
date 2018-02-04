//
//  UIEdgeInsetsExtension.swift
//  DLCoreGraphics
//
//  Created by David Livadaru on 2/4/18.
//

import UIKit

public extension UIEdgeInsets {
    var horizontalInset: CGFloat {
        return left + right
    }

    var verticalInset: CGFloat {
        return top + bottom
    }
}
