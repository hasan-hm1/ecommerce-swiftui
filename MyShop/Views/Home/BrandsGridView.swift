//
//  BrandsGridView.swift
//  MyShop
//
//  Created by Hasan on 5/5/24.
//

import SwiftUI

struct BrandsGridView: View {
    var body: some View {
        ScrollView(.horizontal , showsIndicators: false){
            LazyHGrid(rows: brandsGridLayout){
                ForEach(brands){ brand in
                    BrandGridItemView(brand: brand)
                }
            }//: GridView
            .padding(.horizontal, 1)
        }//: ScrollView
    }
}

#Preview {
    BrandsGridView()
        .padding()
}
