//
//  TabBarController.swift
//  Workout
//
//  Created by Ildar Garifullin on 14/11/2022.
//

import UIKit

enum Tabs: Int {
    case overview
    case session
    case progress
    case settings
}

final class TabBarController: UITabBarController {
    
    private func configure() {
        tabBar.tintColor = Resources.Colors.active
        tabBar.barTintColor = Resources.Colors.inactive
    }
}
