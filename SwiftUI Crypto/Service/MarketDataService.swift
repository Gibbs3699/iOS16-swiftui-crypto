//
//  MarketDataService.swift
//  SwiftUI Crypto
//
//  Created by TheGIZzz on 18/12/2565 BE.
//

import Foundation
import Combine

class MarketDataService {
    
    @Published var marketData: MarketDataModel? = nil
    var marketDataSubscription: AnyCancellable?
    
    init() {
        getData()
    }
    
    private func getData() {
        
        guard let url = URL(string: "https://api.coingecko.com/api/v3/global") else { return }
        
        marketDataSubscription = NetworkingManager.download(url: url)
            .subscribe(on: DispatchQueue.global(qos: .default))
            .decode(type: GlobalData.self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnedMarketData) in
                self?.marketData = returnedMarketData.data
                self?.marketDataSubscription?.cancel()
            })
    }
    
}
