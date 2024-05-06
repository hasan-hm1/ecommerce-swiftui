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
                Button{ mediumFeedback.impactOccurred()
                    if count > 0 {
                        count -= 1
                    }
                }label: {
                    Image(systemName: "minus.circle")
                    
                }
                Text("\(count)")
                    .frame(minWidth: 32)
                Button{ mediumFeedback.impactOccurred()
                    count += 1
                }label: {
                    Image(systemName: "plus.circle")
                    
                }
            }//: HStack
            
            .foregroundStyle(.black)
            
            Spacer()
            
            Button{
                mediumFeedback.impactOccurred()
            }label: {
                Image(systemName: "heart.circle")
                    .foregroundStyle(.pink)
            }
        }//: HStack
        .imageScale(.large)
        .font(.system(.title, design: .rounded))
        .fontWeight(.semibold)
    }
}

#Preview {
    CounterAndFavoriteView()
}
