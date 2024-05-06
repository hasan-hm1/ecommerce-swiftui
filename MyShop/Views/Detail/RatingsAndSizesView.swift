//
//  RatingsAndSizesView.swift
//  MyShop
//
//  Created by Hasan on 5/6/24.
//

import SwiftUI

struct RatingsAndSizesView: View {
    var body: some View {
        HStack{
            // MARK: - Ratings
            VStack(alignment: .leading){
                Text("Ratings")
                    .font(.footnote)
                HStack(spacing: 0){
                    ForEach(1...5, id:\.self){ item in
                    Image(systemName: "star.square.fill")
                            .font(.title)
                    }
                }//: HStack
            }//: VStack
            Spacer()
            // MARK: - Sizes
            VStack(alignment: .trailing , spacing: 0){
                Text("Sizes")
                    .font(.footnote)
                  
                HStack(spacing: 5){
                    ForEach(sizes , id: \.self){ size in
                        Text(size)
                            .font(.footnote)
                            .padding(4)
                            .frame(width: 25 , height: 25)
                            .background(RoundedRectangle(cornerRadius: 5)
                                .stroke()
                            )
                    }
                }//: HStack
               
            }//: VStack
            
        }//: HStack
        .foregroundStyle(.gray)
    }
}

#Preview {
    RatingsAndSizesView()
}
