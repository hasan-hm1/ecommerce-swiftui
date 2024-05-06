//
//  LogoView.swift
//  MyShop
//
//  Created by Hasan on 5/2/24.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing: 4){
            Text("touch".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .backgroundStyle(.black)
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30)
            Text("down".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .backgroundStyle(.black)
        }//: HStack
    }
}

#Preview {
    LogoView()
}
