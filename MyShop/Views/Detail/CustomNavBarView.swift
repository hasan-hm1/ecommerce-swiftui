//
//  CustomNavBarView.swift
//  MyShop
//
//  Created by Hasan on 5/5/24.
//

import SwiftUI

struct CustomNavBarView: View {
    @EnvironmentObject var shop : Shop
    var body: some View {
        HStack{
            Button{
               
                withAnimation(.easeOut){
                    shop.selectedProduct = nil
                }
            }label: {
                Image(systemName: "chevron.left")
            }
            Spacer()
            Button{
                
            }label: {
                Image(systemName: "cart")
            }
        }//: HStack
        .font(.title)
        .foregroundStyle(.white)
        .padding(.horizontal)
    }
}

#Preview {
    CustomNavBarView()
        .background(.pink
        )
        .padding()
}
