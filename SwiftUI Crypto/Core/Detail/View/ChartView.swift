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
        GeometryReader { geometry in
            Path { path in
                for index in data.indices {
                    
                    let xPosition = geometry.size.width / CGFloat(data.count)*CGFloat(index+1)
                    
                    if index == 0 {
                        path.move(to: CGPoint(x:0, y:0))
                    }
                    path.addLine(to: CGPoint(x: xPosition, y: 0))
                }
            }
            .stroke(Color.blue, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
        }
    }
}

struct ChartView_Preview: PreviewProvider {
    static var previews: some View {
        ChartView(coin: dev.coin)
    }
}
