//
//  ContentView.swift
//  MyShop
//
//  Created by Hasan on 5/2/24.
//

import SwiftUI

struct ContentView: View {
    

    @EnvironmentObject var shop: Shop
    
    
    var body: some View {
     
        VStack {
            if shop.selectedProduct == nil {
                HomeView()
            } else {
                ProductDetailsView()
            }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(Shop())
}
