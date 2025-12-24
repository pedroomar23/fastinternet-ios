//
//  FastInternetApp.swift
//  FastInternet
//
//  Created by Pedro Omar  on 12/16/25.
//

import SwiftUI

@main
struct FastInternetApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
   
    var body: some Scene {
        WindowGroup {
            _getApplicationView()
        }
    }
    
    @ViewBuilder
    private func _getApplicationView() -> some View {
        ContentView()
    } 
}
