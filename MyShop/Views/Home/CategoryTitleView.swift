//
//  CategoryTitleView.swift
//  MyShop
//
//  Created by Hasan on 5/5/24.
//

import SwiftUI

struct CategoryTitleView: View {
    let title : String
    var body: some View {
        HStack{
            Text(title)
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Spacer()
        }
    }
}

#Preview {
    CategoryTitleView(title: "Helmets")
}
