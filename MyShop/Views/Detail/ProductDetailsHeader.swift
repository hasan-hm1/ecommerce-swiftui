//
//  ProductDetailsHeader.swift
//  MyShop
//
//  Created by Hasan on 5/5/24.
//

import SwiftUI

struct ProductDetailsHeader: View {
    @EnvironmentObject var shop : Shop
    @State var isAnimating : Bool = false
    var body: some View {
        VStack(alignment: .leading){
            
            Text(shop.selectedProduct?.name ?? "Helmet")
                .font(.title)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundStyle(.white)
            HStack(alignment: /*@START_MENU_TOKEN@*/.top/*@END_MENU_TOKEN@*/){
                VStack(alignment: .leading){
                    Text("Price")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text(shop.selectedProduct?.formattedPrice ?? "$0.0")
                        .font(.system(size: 50))
                        .fontWeight(.black)
                }//: VStack
                .padding(.top, 20)
                .offset(y: isAnimating ? 0 : -25)
                Image(shop.selectedProduct?.image ?? "helmet-placeholder")
                    .resizable()
                    .scaledToFit()
                    .offset(CGSize(width: 0, height: isAnimating ? 0 : -50))
            }//: HStack
            .onAppear{
                withAnimation(.easeOut(duration: 0.75)){
                    isAnimating.toggle()
                }
            }
        }//: VStack
    }
}

#Preview {
    ProductDetailsHeader()
        .environmentObject(Shop())
}
