//
//  AppCoordinator.swift
//  ProjectDescriptionHelpers
//
//  Created by 선민재 on 9/26/24.
//

import UIKit

import LoginFeature

public final class AppCoordinator {
    private let navigationController: UINavigationController
    
    public init(with navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    public func start() {
        let loginViewController: LoginViewController = LoginViewController()
        self.navigationController.pushViewController(loginViewController, animated: false)
    }
}
