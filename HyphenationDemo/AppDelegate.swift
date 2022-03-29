//
//  AppDelegate.swift
//  HyphenationDemo
//
//  Created by Jussi Päivinen on 29.3.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert]) { _, _ in }
        return true
    }
}

