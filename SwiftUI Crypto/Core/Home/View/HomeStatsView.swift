//
//  HomeStatsView.swift
//  SwiftUI Crypto
//
//  Created by TheGIZzz on 15/12/2565 BE.
//

import SwiftUI

struct HomeStatsView: View {
    
    @EnvironmentObject private var vm: HomeViewModel
    @Binding var showProfile: Bool
    
    var body: some View {
        HStack {
            Text("test")
        }
    }
}

struct HomeStatsView_Previews: PreviewProvider {
    static var previews: some View {
        HomeStatsView(showProfile: .constant(true))
    }
}
