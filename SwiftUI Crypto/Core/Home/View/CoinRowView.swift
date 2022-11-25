//
//  CoinRowView.swift
//  SwiftUI Crypto
//
//  Created by TheGIZzz on 23/11/2565 BE.
//

import SwiftUI

struct CoinRowView: View {
    
    let coin: CoinModel
    
    var body: some View {
        HStack {
            Text("\(coin.rank)")
                .font(.caption)
                .foregroundColor(Color.theme.secondaryText)
                .frame(minWidth: 30)
            
            Circle()
                .frame(width: 30, height: 30)
            
            Text("\(coin.symbol.uppercased())")
                .font(.headline)
                .padding(.leading, 6)
                .foregroundColor(Color.theme.accent)
            
            Spacer()
            
//            VStack {
//                Text("\(coin.currentPrice.asCurrencyWith6Decimals())")
//                    .bold()
//                    .foregroundColor(Color.theme.accent)
//                Text("\(coin.priceChangePercentage24H.asPercentString())")
//                    .foregroundColor(coin.priceChangePercentage24H ?? 0.00 >= 0 ? Color.theme.green : Color.theme.red)
//            }
        }
    }
}

struct CoinRowView_Previews: PreviewProvider {
    static var previews: some View {
        CoinRowView(coin: dev.coin)
    }
}
