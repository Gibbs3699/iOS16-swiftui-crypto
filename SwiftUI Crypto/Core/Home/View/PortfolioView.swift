//
//  PortfolioView.swift
//  SwiftUI Crypto
//
//  Created by TheGIZzz on 20/12/2565 BE.
//

import SwiftUI

struct PortfolioView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 0.0) {
                    Text("test")
                }
            }
            .navigationTitle("Edit Portfolio")
            .navigationBarItems(leading:
                                    Button(action: {
                                    presentationMode.wrappedValue.dismiss()
                                    } , label: {
                    Image(systemName: "xmark")
                    .font(.headline)
                })
            )
        }
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
    }
}
