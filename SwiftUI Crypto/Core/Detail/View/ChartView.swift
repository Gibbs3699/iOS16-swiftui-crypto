//
//  ChartView.swift
//  SwiftUI Crypto
//
//  Created by TheGIZzz on 3/2/2566 BE.
//

import SwiftUI

struct ChartView: View {
    
    private let data: [Double]
    private let minY: Double
    private let maxY: Double
    private let lineColor: Color
    
    init(coin: CoinModel) {
        data = coin.sparklineIn7D?.price ?? []
        minY = data.min() ?? 0
        maxY = data.max() ?? 0
        let priceChange = (data.last ?? 0) - (data.first ?? 0)
        lineColor = priceChange > 0 ? Color.theme.green : Color.theme.red
    }
    
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                for index in data.indices {
                    
                    let xPosition = geometry.size.width / CGFloat(data.count)*CGFloat(index+1)
                    
                    let yAxis = maxY - minY
                    
                    let yPosition = (1 - CGFloat((data[index] - minY) / yAxis)) * geometry.size.height
                    
                    if index == 0 {
                        path.move(to: CGPoint(x:xPosition, y:yPosition))
                    }
                    path.addLine(to: CGPoint(x: xPosition, y: yPosition))
                }
            }
            .stroke(lineColor, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
        }
    }
}

struct ChartView_Preview: PreviewProvider {
    static var previews: some View {
        ChartView(coin: dev.coin)
    }
}
