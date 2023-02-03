//
//  ChartView.swift
//  SwiftUI Crypto
//
//  Created by TheGIZzz on 3/2/2566 BE.
//

import SwiftUI

struct ChartView: View {
    
    let data: [Double]
    
    init(coin: CoinModel) {
        data = coin.sparklineIn7D?.price ?? []
    }
    
    var body: some View {
        Text("Hello")
    }
}

struct ChartView_Preview: PreviewProvider {
    static var previews: some View {
        ChartView(coin: dev.coin)
    }
}
