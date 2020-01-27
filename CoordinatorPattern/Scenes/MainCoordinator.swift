//
//  MainCoordinator.swift
//  CoordinatorPattern
//
//  Created by Koray Yildiz on 27.01.2020.
//  Copyright © 2020 Koray Yildiz. All rights reserved.
//

import UIKit

public class MainCoordinator: Coordinator {
  public var childCoordinators = [Coordinator]()

  public var navigationController: UINavigationController

  public init(navigationController: UINavigationController) {
    self.navigationController = navigationController
  }

  public func start() {
    let view = FirstViewController.instantiate(for: "Main")
    view.coordinator = MainCoordinator(navigationController: navigationController)
    navigationController.pushViewController(view, animated: false)
  }

  public func goSecondPage(){
    let view = SecondViewController.instantiate(for: "Main")
    view.coordinator = self
    navigationController.pushViewController(view, animated: true)
  }

  public func goThirdPage(){
    let view = ThirdViewController.instantiate(for: "Main")
    view.coordinator = self
    navigationController.pushViewController(view, animated: true)
  }
}
