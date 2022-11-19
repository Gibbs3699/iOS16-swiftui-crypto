//
//  ContentView.swift
//  SwiftUI Crypto
//
//  Created by TheGIZzz on 17/11/2565 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .foregroundColor(Color.theme.accent)
            Text("Hello, world!")
                .foregroundColor(Color.theme.green)
            Text("Hello, world!")
                .foregroundColor(Color.theme.red)
            Text("Hello, world!")
                .foregroundColor(Color.theme.secondaryText)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().colorScheme(.dark)
    }
}
