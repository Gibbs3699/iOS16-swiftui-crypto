//
//  String.swift
//  SwiftUI Crypto
//
//  Created by TheGIZzz on 9/2/2566 BE.
//

import Foundation

extension String {
    
    var removeHTMLOccuurances: String {
        return self.replacingOccurrences(of: "<[^>]+", with: "", options: .regularExpression, range: nil)
    }
}
