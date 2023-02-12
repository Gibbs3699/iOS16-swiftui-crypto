//
//  Color.swift
//  SwiftUI Crypto
//
//  Created by TheGIZzz on 19/11/2565 BE.
//

import Foundation
import SwiftUI

extension Color {
    
    static let theme = ColorTheme()
}

struct ColorTheme {
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("GreenColor")
    let red = Color("RedColor")
    let secondaryText = Color("SecondaryTextColor")
}

struct LaunchTheme {
    
    let background = Color("LaunchBackgroundColor")
    let accent = Color("LaunchAccentColor")
}
