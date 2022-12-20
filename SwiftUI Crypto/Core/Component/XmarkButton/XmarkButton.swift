//
//  XmarkButton.swift
//  SwiftUI Crypto
//
//  Created by TheGIZzz on 20/12/2565 BE.
//

import SwiftUI

struct XmarkButton: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        } , label: {
            Image(systemName: "xmark")
                .font(.headline)
        })
    }
}

struct XmarkButton_Previews: PreviewProvider {
    static var previews: some View {
        XmarkButton()
    }
}
