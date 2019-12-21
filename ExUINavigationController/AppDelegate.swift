//
//  AppDelegate.swift
//  ExUINavigationController
//
//  Created by Cross on 2019/12/21.
//  Copyright © 2019 Cross. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        let tabBar = UITabBarController()
        let homeNav = ViewController()
        let myNav = SettingViewController()
        
        homeNav.tabBarItem.title = "主页"
        myNav.tabBarItem.title = "我"
        homeNav.tabBarItem.image = UIImage(named: "tab1")
        myNav.tabBarItem.image = UIImage(named: "tab2")
        
        tabBar.viewControllers = [
            UINavigationController(rootViewController: homeNav),
            UINavigationController(rootViewController: myNav)
        ]
        
        
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        self.window?.backgroundColor = UIColor.white
        self.window?.rootViewController = tabBar
        self.window?.makeKeyAndVisible()
        
        
        return true
    }



}

