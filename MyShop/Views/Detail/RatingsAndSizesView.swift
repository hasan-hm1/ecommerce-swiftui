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
            VStack(alignment: .leading, spacing: 5.0){
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                HStack(spacing: 3){
                    ForEach(1...5, id:\.self){ item in
                    Image(systemName: "star.fill")
                            .frame(width: 28 , height: 28, alignment: .center)
                            .background(RoundedRectangle(cornerRadius: 5)
                                .fill(.gray)
                            )
                            .foregroundColor(.white)
                    }
                }//: HStack
            }//: VStack
            Spacer()
            // MARK: - Sizes
            VStack(alignment: .trailing , spacing: 5.0){
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                HStack(spacing: 3){
                    ForEach(sizes , id: \.self){ size in
                        Text(size)
                            .font(.footnote)
                            .frame(width: 28 , height: 28, alignment: .center)
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
