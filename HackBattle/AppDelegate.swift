//
//  AppDelegate.swift
//  HackBattle
//
//  Created by Likhit Garimella on 29/10/20.
//  Copyright © 2020 Likhit Garimella. All rights reserved.
//

import UIKit
import FirebaseCore

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Override point for customization after application launch.
        
        FirebaseApp.configure()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        var initialViewController = sb.instantiateViewController(withIdentifier: "Onboarding")
        
        ///
        let userDefaults = UserDefaults.standard
        if userDefaults.bool(forKey: "onboardingComplete") {
            initialViewController = sb.instantiateViewController(withIdentifier: "Mainapp")
        }   ///
        
        self.window?.rootViewController = initialViewController
        self.window?.makeKeyAndVisible()
        
        /// Status bar color
        // In Info.plist...
        // View controller-based status bar appearance -> NO
        
        UITabBar.appearance().barTintColor = .white
        /// Dark blue color theme
        UITabBar.appearance().tintColor = UIColor(red: 15/255, green: 60/255, blue: 122/255, alpha: 1.0)
        
        /// Increase Launch Screen Time
        Thread.sleep(forTimeInterval: 1)
        
        return true
        
    }

    // MARK: UISceneSession Lifecycle
    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        if #available(iOS 13.0, *) {
            return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
        } else {
            // Fallback on earlier versions
        }
        return UISceneConfiguration(name: "False", sessionRole: connectingSceneSession.role)
        }
    
    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
}   // #73
