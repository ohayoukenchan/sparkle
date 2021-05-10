//
//  sparkleApp.swift
//  sparkle
//
//  Created by ohayoukenchan on 2021/05/03.
//

import SwiftUI
import Firebase

@main
struct sparkleApp: App {
    
    @UIApplicationDelegateAdaptor (AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: ProductsViewModel())
        }
    }
    
    class AppDelegate: UIResponder, UIApplicationDelegate {
        func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
            FirebaseApp.configure()
            
            return true
        }
    }
}
