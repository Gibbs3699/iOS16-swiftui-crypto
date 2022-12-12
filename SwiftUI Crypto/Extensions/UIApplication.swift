//
//  UIApplication.swift
//  SwiftUI Crypto
//
//  Created by TheGIZzz on 12/12/2565 BE.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
