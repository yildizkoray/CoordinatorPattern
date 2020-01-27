//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by Koray Yildiz on 27.01.2020.
//  Copyright © 2020 Koray Yildiz. All rights reserved.
//

import UIKit

public class FirstViewController: UIViewController, Storyboarded {

  public var coordinator: MainCoordinator?

  override public func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func goSecond(_ sender: Any) {
    coordinator?.goSecondPage()
  }
}

