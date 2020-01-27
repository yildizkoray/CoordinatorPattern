//
//  SecondViewController.swift
//  CoordinatorPattern
//
//  Created by Koray Yildiz on 27.01.2020.
//  Copyright © 2020 Koray Yildiz. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, Storyboarded {

  weak var coordinator: MainCoordinator?

  override func viewDidLoad() {
    super.viewDidLoad()
  }
  @IBAction func goThirdPage(_ sender: Any) {
    coordinator?.goThirdPage()
  }
}
