//
//  AppDelegate.swift
//  GOT-Challenge-Swift
//
//  Created by Conrado Mateu Gisbert on 05/03/17.
//  Copyright © 2017 conradomateu. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        configureWindow()
        configureNavigationBarStyle()

        window = UIWindow(frame:UIScreen.main.bounds)
        RootRouter().presentCharactersScreen(in: window!)
        return true
    }

   
    fileprivate func configureWindow() {
        window?.backgroundColor = UIColor.windowBackgroundColor
        CostumImage.appearance().backgroundColor = UIColor.imageViewBackgroundColor
    }

    fileprivate func configureNavigationBarStyle() {
        let navigationBarAppearance = UINavigationBar.appearance()
        navigationBarAppearance.barTintColor = UIColor.navigationBarColor
        navigationBarAppearance.tintColor = UIColor.navigationBarTitleColor
        navigationBarAppearance.isTranslucent = false
        navigationBarAppearance.titleTextAttributes = [
            NSForegroundColorAttributeName: UIColor.navigationBarTitleColor
        ]
    }
}

