//
//  AppDelegate.swift
//  component
//
//  Created by Robert Wan on 6/4/2025.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
//        let tabBarController = UITabBarController()
//        tabBarController.viewControllers = getViewControllers()
//        tabBarController.tabBar.tintColor = .blue
        window?.rootViewController = LandingViewController()
        window?.makeKeyAndVisible()
        return true
    }
}
