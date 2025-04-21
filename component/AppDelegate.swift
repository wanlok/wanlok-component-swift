//
//  AppDelegate.swift
//  component
//
//  Created by Robert Wan on 6/4/2025.
//

import UIKit
import Firebase
import UserNotifications

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
//        FirebaseApp.configure()
//        
//        UNUserNotificationCenter.current().delegate = self
//        
//        Messaging.messaging().delegate = self
        
        requestNotificationPermission(application)
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
//        let tabBarController = UITabBarController()
//        tabBarController.viewControllers = getViewControllers()
//        tabBarController.tabBar.tintColor = .blue
        window?.rootViewController = LandingViewController()
        window?.makeKeyAndVisible()
        return true
    }

    func requestNotificationPermission(_ application: UIApplication) {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { granted, _ in
            print("Permission granted: \(granted)")
        }

        application.registerForRemoteNotifications()
    }

    func application(_ application: UIApplication,
                     didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        Messaging.messaging().apnsToken = deviceToken
    }
}
