//
//  AppDelegate.swift
//  MySwiftApp
//
//
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
//        Swift自定义UITabBar
//        创建Window
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = UIColor.white
//        初始化一个tabbar
        let customTabBar = IWCustomTabBarController()
//        设置跟视图控制器
        window?.rootViewController = customTabBar
       
        window?.makeKeyAndVisible()
        
        
        return true
    }

   


}

