//
//  AppDelegate.swift
//  GoTrainTime
//
//  Created by Yaxin Yuan on 2017/1/16.
//  Copyright © 2017年 Yaxin Yuan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        if let window = window{
            window.backgroundColor = UIColor.white
            window.rootViewController = SelectionViewController()
            window.makeKeyAndVisible()
        }
        return true
    }



}

