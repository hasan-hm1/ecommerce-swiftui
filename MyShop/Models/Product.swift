//
//  Product.swift
//  MyShop
//
//  Created by Hasan on 5/5/24.
//

import SwiftUI

struct Product : Codable, Identifiable{
    
    let id : Int
    let name: String
    let image: String
    let price :Int
    let description : String
    let color : [Double]
    var RGBColor : Color {
        return Color(red: color[0], green: color[1], blue: color[2])
    }
    
    var formattedPrice : String {
        return "$\(price)"
    }
}
