//
//  HapticManager.swift
//  SwiftUI Crypto
//
//  Created by TheGIZzz on 10/1/2566 BE.
//

import Foundation
import SwiftUI

class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}
 
