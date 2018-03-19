//
//  UIEdgeInsetsExtension.swift
//  DLCoreGraphics
//
//  Created by David Livadaru on 2/4/18.
//

import UIKit

public extension UIEdgeInsets {
    /// The horizontal inset if the sum of horizontal components (left and right).
    var horizontalInset: CGFloat {
        return left + right
    }

    /// The vertical inset if the sum of vertical components (top and bottom).
    var verticalInset: CGFloat {
        return top + bottom
    }
}
