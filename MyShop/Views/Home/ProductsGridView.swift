//
//  ProductsGridView.swift
//  MyShop
//
//  Created by Hasan on 5/5/24.
//

import SwiftUI

struct ProductsGridView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            LazyVGrid(columns: productsGridLayout, spacing: 20){
                ForEach(products) { product in
                    ProductGridItemView(product: product)
                }
            }
        }
    }
}

#Preview {
    ProductsGridView()
        .padding()
}
