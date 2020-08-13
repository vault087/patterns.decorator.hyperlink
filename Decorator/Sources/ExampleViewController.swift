//
//  ExampleViewController.swift
//  Decorator
//
//  Created by Andrey Soloviov on 10/8/20.
//

import UIKit

class ExampleViewController: UIViewController {

  @IBOutlet weak var hyperlinkLabel1: UILabel!
  @IBOutlet weak var hyperlinkLabel2: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()
    hyperlinkLabel1
      .text("Medium")
      .url(URL(string: "https://medium.com"))

    hyperlinkLabel2
      .text("Google")
      .url(URL(string: "https://google.com"))

  }
}
