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
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let vc = ViewController()
        let nav = UINavigationController(rootViewController: vc);
        self.window?.backgroundColor = UIColor.white
        self.window?.rootViewController = nav
        self.window?.makeKeyAndVisible()
        
        return true
    }



}

