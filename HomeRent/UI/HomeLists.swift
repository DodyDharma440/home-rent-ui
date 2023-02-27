//
//  HomeLists.swift
//  HomeRent
//
//  Created by Dodi Aditya on 27/02/23.
//

import SwiftUI

struct HomeLists: View {
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                Text("Best for you")
                    .font(.title2)
                    .fontWeight(.light)
                Spacer()
                Text("See More")
                    .fontWeight(.thin)
                    .font(.subheadline)
            }
            
            VStack(spacing: 16.0) {
                ForEach(houseLists) { house in
                    HouseList(house: house)
                }
            }
        }
        .padding(.bottom, 12)
        .padding(.horizontal, 20)
    }
}

struct HomeLists_Previews: PreviewProvider {
    static var previews: some View {
        HomeLists()
    }
}
