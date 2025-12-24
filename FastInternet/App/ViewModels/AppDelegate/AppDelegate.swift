//
//  AppDelegate.swift
//  FastInternet
//
//  Created by Pedro Omar  on 12/19/25.
//

import Foundation
import UIKit
import SwiftUI

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        registerAppOpenTime()
        return true
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        registerAppCloseTime()
    }
    
    private func registerAppOpenTime() {
        let date = Date()
        if let userDefaults = UserDefaults(suiteName: "comm.app.storage.fastinternet") {
            userDefaults.set(date, forKey: "appOpenAt")
        }
    }
    
    private func registerAppCloseTime() {
        let date = Date()
        if let userDefaults = UserDefaults(suiteName: "com.app.storage.fastinternet") {
            userDefaults.set(date, forKey: "onCloseAt")
        }
    }
}


