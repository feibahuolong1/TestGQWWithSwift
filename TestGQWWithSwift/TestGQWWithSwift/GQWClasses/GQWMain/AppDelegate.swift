//
//  AppDelegate.swift
//  TestGQWWithSwift
//
//  Created by Broc on 2017/6/5.
//  Copyright © 2017年 Broc. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.window = UIWindow.init(frame: UIScreen.main.bounds)
        self.loadView()
        self.window?.makeKeyAndVisible()
        return true
    }
    func loadView() {
        let homeNav = BaseNavigationController.init(rootViewController: HomeViewController())
        homeNav.tabBarItem = UITabBarItem.init(title: "主页", image: #imageLiteral(resourceName: "home_normal"), tag: 0)
        homeNav.tabBarItem.selectedImage = #imageLiteral(resourceName: "home_selected")
        
        
        let investNav = BaseNavigationController.init(rootViewController: InvestListViewController())
        investNav.tabBarItem = UITabBarItem.init(title: "投资", image: #imageLiteral(resourceName: "invest_normal"), tag: 1)
        investNav.tabBarItem.selectedImage = #imageLiteral(resourceName: "invest_selected")
        
        let accountNav = BaseNavigationController.init(rootViewController: AccountViewController())
        accountNav.tabBarItem = UITabBarItem.init(title: "活动", image: #imageLiteral(resourceName: "activity_normal"), tag: 2)
        accountNav.tabBarItem.selectedImage = #imageLiteral(resourceName: "activity_selected")
        
        let activityNav = BaseNavigationController.init(rootViewController: ActivityViewController())
        activityNav.tabBarItem = UITabBarItem.init(title: "账户", image: #imageLiteral(resourceName: "account_normal"), tag: 3)
        activityNav.tabBarItem.selectedImage = #imageLiteral(resourceName: "account_selected")
        
        let tabBarC = LCTabBarController.init();
        tabBarC.itemTitleFont          = UIFont.systemFont(ofSize: 9)
        tabBarC.itemTitleColor         = UIColor.orange
        tabBarC.selectedItemTitleColor = UIColor.red
        tabBarC.itemImageRatio         = 0.8
        tabBarC.badgeTitleFont         = UIFont.systemFont(ofSize: 13)
        tabBarC.viewControllers = [homeNav,investNav,activityNav,accountNav]
        self.window?.rootViewController = tabBarC;
    }
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

