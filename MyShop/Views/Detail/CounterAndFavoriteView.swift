//
//  CounterAndFavoriteView.swift
//  MyShop
//
//  Created by Hasan on 5/6/24.
//

import SwiftUI

struct CounterAndFavoriteView: View {
    @State var count : Int = 1
    var body: some View {
        HStack{
            HStack(spacing: 10.0){
                Button{
                    if count > 0 {
                        count -= 1
                    }
                }label: {
                    Image(systemName: "minus.circle")

                }
                Text("\(count)")
                    .frame(width: 40)
                Button{
                    count += 1
                }label: {
                    Image(systemName: "plus.circle")
               
                }
            }//: HStack

            .foregroundStyle(.black)
            
            Spacer()
            
            Button{
                
            }label: {
                Image(systemName: "heart.circle")
                    .foregroundStyle(.pink)
            }
        }//: HStack
        .imageScale(.large)
        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        .fontWeight(.semibold)
    }
}

#Preview {
    CounterAndFavoriteView()
}
