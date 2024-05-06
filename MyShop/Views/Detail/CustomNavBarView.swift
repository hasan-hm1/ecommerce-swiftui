//
//  CustomNavBarView.swift
//  MyShop
//
//  Created by Hasan on 5/5/24.
//

import SwiftUI

struct CustomNavBarView: View {
    var body: some View {
        HStack{
            Button{
                
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
