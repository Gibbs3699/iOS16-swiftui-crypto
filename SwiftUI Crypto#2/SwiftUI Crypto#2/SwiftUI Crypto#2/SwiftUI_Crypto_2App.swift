//
//  SwiftUI_Crypto_2App.swift
//  SwiftUI Crypto#2
//
//  Created by TheGIZzz on 6/12/2565 BE.
//

import SwiftUI

@main
struct SwiftUI_Crypto_2App: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}
