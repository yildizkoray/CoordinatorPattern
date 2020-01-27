//
//  Storyboarded.swift
//  CoordinatorPattern
//
//  Created by Koray Yildiz on 27.01.2020.
//  Copyright © 2020 Koray Yildiz. All rights reserved.
//

import UIKit

public protocol Storyboarded {
  static func instantiate(for name: String) -> Self
}

public extension Storyboarded where Self: UIViewController {

  static func instantiate(for name: String) -> Self {
    let id = String(describing: self)
    let storyboard = UIStoryboard(name: name, bundle: Bundle.main)
    return storyboard.instantiateViewController(withIdentifier: id) as! Self
  }
}
