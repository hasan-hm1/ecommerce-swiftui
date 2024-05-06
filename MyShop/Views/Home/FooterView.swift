//
//  FooterView.swift
//  MyShop
//
//  Created by Hasan on 5/2/24.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(spacing: 15.0){
            Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices.")
                .multilineTextAlignment(.center)
            Image("logo-lineal")
            // to allow color change
                .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
               
            Text("All rights reserved.")
                .multilineTextAlignment(.center)
                
        }//: VStack
        .foregroundStyle(.gray)
    }
}

#Preview {
    FooterView()
}



