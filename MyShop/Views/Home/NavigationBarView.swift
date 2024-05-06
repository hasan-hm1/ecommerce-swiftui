//
//  NavigationBarView.swift
//  MyShop
//
//  Created by Hasan on 5/2/24.
//

import SwiftUI

struct NavigationBarView: View {
    
    @State var isAnimating : Bool = false
    var body: some View {
        HStack {
            Button {
                
            }label: {
                Image(systemName: "magnifyingglass")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.black)
            }
            
            Spacer()
            LogoView()
                .opacity(isAnimating ? 1 : 0)
                .offset(x:  0.0 , y: isAnimating ? 0 : -30)
                .animation(.easeOut(duration: 0.5), value: isAnimating)
                .onAppear{
                    isAnimating.toggle()
                }
            Spacer()
            
            Button {
                
            }label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.black)
                    Circle()
                        .fill(.red)
                        .frame(width :14, alignment: .center)
                        .offset(x: 13 , y: -10)
                }
            }
        }//: HSTACK
      
      
    }
}

#Preview {
    NavigationBarView()
        .padding()
}
