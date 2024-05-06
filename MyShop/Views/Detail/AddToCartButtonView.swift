//
//  AddToCartButtonView.swift
//  MyShop
//
//  Created by Hasan on 5/6/24.
//

import SwiftUI

struct AddToCartButtonView: View {
    @EnvironmentObject var shop : Shop
    var body: some View {
        Button{
            mediumFeedback.impactOccurred()
        }label: {
          
                Text("Add to cart".uppercased())
                    .font(.title3)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.white)
                    .padding(15)
                    .frame(width: UIScreen.main.bounds.width - CGFloat(20), height: nil, alignment: .center)
                    .background(
                        (shop.selectedProduct?.RGBColor ?? .pink)
                            .clipShape(Capsule())
                    )
                   
                
          
        }
    }
}

#Preview {
    AddToCartButtonView()
      
}
