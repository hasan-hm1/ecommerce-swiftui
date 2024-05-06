//
//  MyShopApp.swift
//  MyShop
//
//  Created by Hasan on 5/2/24.
//

import SwiftUI

@main
struct MyShopApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
