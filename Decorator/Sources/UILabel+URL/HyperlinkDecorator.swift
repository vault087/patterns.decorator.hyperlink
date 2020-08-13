//
//  HyperlinkDecorator.swift
//  Decorator
//
//  Created by Andrey Soloviov on 13/8/20.
//

import UIKit

class HyperlinkDecorator: UIView, ViewDecorator {
  var url: URL?
  weak var label: UILabel?
  
  required init(object label: UILabel) {
    self.label = label
    super.init(frame: .zero)
    label.isUserInteractionEnabled = true
    label.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(hyperlinkedLabelTapped)))
    label.addSubview(self)
  }
  
  // It's required to have for UIView subclasses
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  @objc private func hyperlinkedLabelTapped() {
    if let url = url, UIApplication.shared.canOpenURL(url) {
      UIApplication.shared.open(url)
    }
  }
}
