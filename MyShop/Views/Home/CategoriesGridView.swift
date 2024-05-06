//
//  CategoriesGridView.swift
//  MyShop
//
//  Created by Hasan on 5/5/24.
//

import SwiftUI

struct CategoriesGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: categoriesGridLayout, spacing: rowSpacing){
                Section(header: SectionView( rotateClockwise: false ), footer: SectionView()) {
                    ForEach(categories){ category in
                        CategoryGridItem(category: category)
                    }
                }
            }//: Grid
            .padding(0)
            .padding(.horizontal, 1)
            .frame(height: 120)
        }//: ScrollView
    }
}

#Preview {
    CategoriesGridView()
}
