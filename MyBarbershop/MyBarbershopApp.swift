//
//  MyBarbershopApp.swift
//  MyBarbershop
//
//  Created by ZISACHMAD on 10/05/21.
//

import SwiftUI
import StreamChat

@main
struct MyBarbershopApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            LandingPage()
        }
    }
}

class AppDelegate: NSObject,UIApplicationDelegate {
    
    @AppStorage("UserName") var storedUser = ""
    @AppStorage("log_Status") var logStatus = false
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {

        let config = ChatClientConfig(apiKeyString: APIKey)
        
        // JIKA USER BERHASIL LOGIN
        if logStatus {
            ChatClient.shared = ChatClient(config: config, tokenProvider: .development(userId: storedUser))
        }
        else {
            ChatClient.shared = ChatClient(config: config, tokenProvider: .anonymous)
        }
        return true
    }
}

// STREAM API
extension ChatClient {
    static var shared: ChatClient!
}
