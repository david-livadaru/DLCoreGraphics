//
//  UIEdgeInsets+InversibleExtension.swift
//  DLCoreGraphics
//
//  Created by David Livadaru on 2/4/18.
//

import UIKit

extension UIEdgeInsets: Inversible {
    prefix public static func - (_ value: UIEdgeInsets) -> UIEdgeInsets {
        return UIEdgeInsets(top: -value.top, left: -value.left, bottom: -value.bottom, right: -value.right)
    }
}
