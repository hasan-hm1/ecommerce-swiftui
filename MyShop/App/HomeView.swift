//
//  HomeView.swift
//  MyShop
//
//  Created by Hasan on 5/6/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 10) {
            NavigationBarView()
                .padding()
                .background(.white)
                .shadow( color: .black.opacity(0.05), radius: 10, x: 0, y: 10)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20){
                    ImageCarouselView(players: players)
                        .frame(height: 250)
                    
                    CategoriesGridView()
                    CategoryTitleView(title: "Helmets")
                    ProductsGridView()
                    CategoryTitleView(title: "Brands")
                    BrandsGridView()
                    FooterView()
                        .padding(.horizontal)
                }
              
                
                
            }
            .padding(.horizontal)
        }//: VStack
        
        .background(colorBackground)
    }
}

#Preview {
    HomeView() 
}
