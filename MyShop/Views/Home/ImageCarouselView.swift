//
//  ImageCarouselView.swift
//  MyShop
//
//  Created by Hasan on 5/3/24.
//

import SwiftUI

struct ImageCarouselView: View {
    let players : [Player]
    var body: some View {
        TabView {
            ForEach(players) { player in
                Image(player.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(12)
                    .padding(.horizontal)
                    .frame(height: 300)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

#Preview {
    
    ImageCarouselView(players: players)
      
        .background(.pink)
}
