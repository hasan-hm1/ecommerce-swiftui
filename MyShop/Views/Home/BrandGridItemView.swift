//
//  BrandGridItemView.swift
//  MyShop
//
//  Created by Hasan on 5/5/24.
//

import SwiftUI

struct BrandGridItemView: View {
    let brand : Brand
    var body: some View {
        Button{
            
        }label: {
            Image(brand.image)
                .resizable()
                .scaledToFit()
                .padding()
                .background(RoundedRectangle(cornerRadius: 12)
                    .fill(.white)
                    .stroke(.gray ,style: StrokeStyle(lineWidth: 1))
                )
        }
    }
}

#Preview {
    BrandGridItemView(brand: brands[0])
        .padding()
        .background(.pink)
}
