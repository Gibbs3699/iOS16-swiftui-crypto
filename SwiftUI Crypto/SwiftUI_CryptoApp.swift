//
//  SwiftUI_CryptoApp.swift
//  SwiftUI Crypto
//
//  Created by TheGIZzz on 17/11/2565 BE.
//

import SwiftUI

@main
struct SwiftUI_CryptoApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}
