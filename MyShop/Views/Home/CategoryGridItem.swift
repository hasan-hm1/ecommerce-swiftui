//
//  CategoryGridItem.swift
//  MyShop
//
//  Created by Hasan on 5/4/24.
//

import SwiftUI

struct CategoryGridItem: View {
    let category : Category
    var body: some View {
        Button{
            
        }label: {
            HStack{
                Image(category.image)
                    .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)
                Text(category.name.uppercased())
                    .fontWeight(.light)
                Spacer()
            }//: HStack
            .padding(8)
            .padding(.horizontal, 10)
//            .frame(width: 160)
            .foregroundStyle(.gray)
            .background(){
                RoundedRectangle(cornerRadius: 10)
                    .fill(.white)
                    .stroke(
                        .gray,
                        lineWidth: 1.0)
            }
        }//: Button
        .padding(0)
      
            
    }
}

#Preview {

    return  CategoryGridItem(category: categories[0])
}
