//
//  UILabel+Hyperlink.swift
//  Decorator
//
//  Created by Andrey Soloviov on 11/8/20.
//

import UIKit

extension UILabel {
  var url: URL? {
    get { viewDecorator(type: HyperlinkDecorator.self).url }
    set { viewDecorator(type: HyperlinkDecorator.self).url = newValue }
  }

  @discardableResult func url(_ url: URL?) -> Self { self.url = url; return self }
}
