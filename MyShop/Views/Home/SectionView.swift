//
//  SectionView.swift
//  MyShop
//
//  Created by Hasan on 5/4/24.
//

import SwiftUI

struct SectionView: View {
    let rotateClockwise : Bool
    
    init(rotateClockwise: Bool = true) {
        self.rotateClockwise = rotateClockwise
    }

    var body: some View {
        VStack{
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            Spacer()
        }//: VStack
        .background(.gray).cornerRadius(12)
        .frame(width: 85)
    }
}

#Preview("Preview 1", traits: .sizeThatFitsLayout) {
    SectionView()
}
