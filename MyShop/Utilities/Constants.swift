//
//  Costants.swift
//  MyShop
//
//  Created by Hasan on 5/2/24.
//

import SwiftUI


//Data
let players : [Player] = Bundle.main.decode("player.json")
let categories : [Category] = Bundle.main.decode("category.json")
let products : [Product] = Bundle.main.decode("product.json")
let brands : [Brand] = Bundle.main.decode("brand.json")
let sizes : [String] = ["XS", "S" , "M" , "L" , "XL"]

// Colors
let colorBackground : Color = .colorBackground
let colorGray : Color = Color(UIColor.systemGray4)


// Layout

let columnSpacing : CGFloat = 10
let rowSpacing : CGFloat = 10
let categoriesGridLayout : [GridItem] = Array(repeating: .init(.flexible(), spacing: 0, alignment: .center), count: 2)
let productsGridLayout : [GridItem] = Array(repeating: .init(.flexible(),spacing: 10, alignment: .center), count: 2)
let brandsGridLayout : [GridItem] = Array(repeating: .init(.fixed(100)), count: 2)

