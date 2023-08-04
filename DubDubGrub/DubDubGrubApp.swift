//
//  DubDubGrubApp.swift
//  DubDubGrub
//
//  Created by Мария Аверина on 20.04.2023.
//

import SwiftUI
import Firebase

@main
struct DubDubGrubApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            AppTabView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}
