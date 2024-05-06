//
//  ProductDetailsView.swift
//  MyShop
//
//  Created by Hasan on 5/5/24.
//

import SwiftUI

struct ProductDetailsView: View {
    let product : Product
    @State var isAnimating : Bool = false
    var body: some View {
        ZStack {
            // MARK: - Color background
            product.RGBColor
            // MARK: - White background
            GeometryReader { geometry in
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .fill(.white)
                    .offset(y: geometry.size.height / 3)
            }
            
            // MARK: - Product info
            VStack(alignment: .leading, spacing: 0.0){
                CustomNavBarView()
                
                VStack(alignment: .leading, spacing: 10){
                    // MARK: - Header
                    ProductDetailsHeader(product: product)
         
                }//: VStack
                .padding(.horizontal)
                .padding(.top,10)
                
                ScrollView(.vertical, showsIndicators: false){
                    // MARK: - Ratings and Sizes
                    RatingsAndSizesView()
                    // MARK: - Description
                    Text(product.description)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.gray)
                    // MARK: - Counter + fav
                    CounterAndFavoriteView()
                        .padding(.top, 10)
                    // MARK: - Add to cart
                    Button{
                        
                    }label: {
                        Text("Add to cart".uppercased())
                            .background(RoundedRectangle(cornerRadius: 12)
                                
                            )
                    }
    //                        .buttonBorderShape(.capsule)
                    .frame(width: .infinity)
                }
                
 
                
                
                
                
            }//: VStack
            .padding(.top ,UIApplication.shared.windows.first?.safeAreaInsets.top)
        }.ignoresSafeArea()
    }
}

#Preview {
    ProductDetailsView(product: products[0])
}


