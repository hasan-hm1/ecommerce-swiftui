//
//  ProductDetailsView.swift
//  MyShop
//
//  Created by Hasan on 5/5/24.
//

import SwiftUI

struct ProductDetailsView: View {
  @EnvironmentObject  var shop : Shop
    @State var isAnimating : Bool = false
    var body: some View {
        // MARK: - Product info
        VStack(alignment: .leading, spacing: 0.0){
            CustomNavBarView()
                .padding(.bottom , 20)
//                .layoutPriority(10)
                // MARK: - Header
            ProductDetailsHeader()
                .padding(.horizontal)
                .zIndex(1.0)
            VStack(spacing: 10){
                    RatingsAndSizesView()
                    .padding(.top , -20)
                    .padding(.bottom, 10)
                ScrollView(.vertical, showsIndicators: false){
                    Text(shop.selectedProduct?.description ?? "")
                        .multilineTextAlignment(.leading)
                        .foregroundStyle(.gray)
                }
                .padding(0)
                    // MARK: - Counter + fav
                    CounterAndFavoriteView()
                AddToCartButtonView()
                    .padding(.bottom, 30)
                    .padding(.top, 20)
                }//: VStack
            .padding(.horizontal)
                .background(Rectangle()
                    .fill(.white)
                    
                    .clipShape(
                    .rect(
                        topLeadingRadius: 25,
                        bottomLeadingRadius: 0,
                        bottomTrailingRadius: 0,
                        topTrailingRadius: 25
                    )
                  
                )
                        .padding(.top, -100)
                        .padding(.bottom, -10)
                )
           
        }//: VStack
        .background(shop.selectedProduct?.RGBColor ?? .pink)
        .ignoresSafeArea(.all , edges: .bottom)
        
    }
}

#Preview {
    ProductDetailsView()
         
}


