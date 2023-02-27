//
//  HouseSlider.swift
//  HomeRent
//
//  Created by Dodi Aditya on 27/02/23.
//

import SwiftUI

struct HouseSlider: View {
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                Text("Near from you")
                    .font(.title2)
                    .fontWeight(.light)
                Spacer()
                Text("See More")
                    .fontWeight(.thin)
                    .font(.subheadline)
            }
            .padding(.bottom, 12)
            .padding(.horizontal, 20)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16.0) {
                    ForEach(houseSliders) { house in
                        HouseCard(house: house)
                    }
                    
                }
                .padding(.horizontal, 20)
            }
        }
    }
}

struct HouseSlider_Previews: PreviewProvider {
    static var previews: some View {
        HouseSlider()
    }
}
