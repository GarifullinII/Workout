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
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // create TabBar
    private func configure() {
        tabBar.tintColor = Resources.Colors.active
        tabBar.barTintColor = Resources.Colors.inactive
        tabBar.backgroundColor = .white
        
        tabBar.layer.borderColor = Resources.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        // controllers TabBar
        let overviewController = OverviewController()
        let sessionController = SessionController()
        let progressController = ProgressController()
        let settingsController = SettingsController()
        
        // navigation controllers elements TabBar
        let overviewNavigation = NavBarController(rootViewController: overviewController)
        let sessionNavigation = NavBarController(rootViewController: sessionController)
        let progressNavigation = NavBarController(rootViewController: progressController)
        let settingsNavigation = NavBarController(rootViewController: settingsController)
        
        // elements TabBar
        overviewNavigation.tabBarItem = UITabBarItem(
            title: Resources.Strings.TabBar.overview,
            image: Resources.Images.overview,
            tag: Tabs.overview.rawValue)
        sessionNavigation.tabBarItem = UITabBarItem(
            title: Resources.Strings.TabBar.session,
            image: Resources.Images.session,
            tag: Tabs.session.rawValue)
        progressNavigation.tabBarItem = UITabBarItem(
            title: Resources.Strings.TabBar.progress,
            image: Resources.Images.progress,
            tag: Tabs.progress.rawValue)
        settingsNavigation.tabBarItem = UITabBarItem(
            title: Resources.Strings.TabBar.settings,
            image: Resources.Images.settings,
            tag: Tabs.settings.rawValue)
        
        setViewControllers([
            overviewNavigation, sessionNavigation, progressNavigation, settingsNavigation
        ], animated: false)
    }
}
