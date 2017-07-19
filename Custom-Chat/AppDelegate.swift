//
//  AppDelegate.swift
//  Custom-Chat
//
//  Created by Bertuğ YILMAZ on 19/07/2017.
//  Copyright © 2017 bertug. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        self.setNavigationBarSettings()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }
    
    func setNavigationBarSettings(){
        UINavigationBar.appearance().tintColor = UIColor.black
        UINavigationController().navigationBar.isTranslucent = false
    }
}

