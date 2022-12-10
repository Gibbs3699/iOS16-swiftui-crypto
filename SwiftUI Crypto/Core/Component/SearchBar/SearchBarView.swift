//
//  SearchBarView.swift
//  SwiftUI Crypto
//
//  Created by TheGIZzz on 10/12/2565 BE.
//

import SwiftUI

struct SearchBarView: View {
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            
            Text("Search by name or symbol... ")
        }
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}
