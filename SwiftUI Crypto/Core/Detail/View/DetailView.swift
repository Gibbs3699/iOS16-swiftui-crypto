//
//  DetailView.swift
//  SwiftUI Crypto
//
//  Created by TheGIZzz on 18/1/2566 BE.
//

import SwiftUI

struct DetailView: View {
    
    @Binding var coin: CoinModel?
    
    init(coin: Binding<CoinModel?>) {
        self._coin = coin
        print("Initializing Detail View for \(coin.wrappedValue?.name)")
    }
    
    var body: some View {
        Text(coin?.name ?? "")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(coin: .constant(dev.coin))
    }
}

