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
        // Override point for customization after application launch.

        window = UIWindow(frame:UIScreen.main.bounds)
        installRootViewControllerIntoWindow(window)

        configureWindow()
        configureNavigationBarStyle()
        self.window!.makeKeyAndVisible()
        return true
    }

    fileprivate func installRootViewControllerIntoWindow(_ window: UIWindow?) {
        let storyboard = UIStoryboard(name: "GOT", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "CharactersViewController")
        window?.rootViewController = UINavigationController(rootViewController: R.storyboard.gOT.charactersViewController()!)
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

