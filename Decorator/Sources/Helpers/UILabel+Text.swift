//
//  UILabel+Text.swift
//  Decorator.Hyperlink
//
//  Created by Andrey Soloviov on 14/8/20.
//

import UIKit

extension UILabel {
  @discardableResult func text(_ text: String?) -> Self { self.text = text; return self }
}
