//
//  ProductGridItemView.swift
//  MyShop
//
//  Created by Hasan on 5/5/24.
//

import SwiftUI

struct ProductGridItemView: View {
    let product : Product
    var body: some View {
        
            VStack(  alignment: .leading, spacing: 5 ){
                Button {
                } label : {
                    Image(product.image)
                        .resizable()
                        .scaledToFit()
                        .padding()
                        .background(product.RGBColor)
                    .cornerRadius(12)
                }
 
                
                Text(product.name)
                    .font(.title3)
                    .fontWeight(.heavy)
                    .foregroundStyle(.black)
                
                Text(product.formattedPrice)
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundStyle(.gray)
            }//: VStack
     

    }
}

#Preview {
    ProductGridItemView(product: products[0])
        .padding()
}
