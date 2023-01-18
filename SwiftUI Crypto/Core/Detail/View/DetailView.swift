//
//  DetailView.swift
//  SwiftUI Crypto
//
//  Created by TheGIZzz on 18/1/2566 BE.
//

import SwiftUI

struct DetailView: View {
    
    let coin: CoinModel
    
    var body: some View {
        Text(coin.name)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(coin: dev.coin)
    }
}

