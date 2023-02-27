//
//  HouseCard.swift
//  HomeRent
//
//  Created by Dodi Aditya on 27/02/23.
//

import SwiftUI

struct HouseCard: View {
    var house: House
    
    var body: some View {
        ZStack {
            Image(house.thumbnail)
                .resizable()
                .aspectRatio(contentMode: .fill)
            VStack {
                LinearGradient(colors: [.black.opacity(0.6), .black.opacity(0.1), .black.opacity(0)], startPoint: .bottom, endPoint: .top)
            }
            VStack(alignment: .leading) {
                HStack {
                    Spacer()
                    HStack {
                        Image(systemName: "location")
                            .padding(.leading, 12)
                            .font(.system(size: 14))
                        Text("\(house.distance)km")
                            .padding(.vertical, 8)
                            .padding(.trailing, 12)
                            .font(.system(size: 16))
                    }
                    .foregroundColor(.white)
                    .background(.black.opacity(0.3))
                    .cornerRadius(24)
                    .frame(alignment: .trailing)
                    .padding(.trailing, 20)
                    .padding(.top, 20)
                }
                HStack {
                    Spacer()
                }
                .frame(maxHeight: .infinity)
                HStack {
                    VStack(alignment: .leading, spacing: 6.0) {
                        Text(house.name)
                            .font(.headline)
                            .fontWeight(.medium)
                        Text(house.address)
                            .font(.caption)
                            .fontWeight(.light)
                    }
                    .foregroundColor(.white)
                    .padding(.leading, 20)
                    .padding(.bottom, 20)
                }
            }
            .frame(width: 224, height: 270)
        }
        .frame(width: 224, height: 270)
        .cornerRadius(20)
    }
}

struct HouseCard_Previews: PreviewProvider {
    static var previews: some View {
        
        HouseCard(house: House(name: "Dreamsville House", address: "Jl. Sultan Iskandar Muda", distance: "1.8", thumbnail: "dreamsville", pricePerYear: 2500000000, bedroomCount: 6, bathroomCount: 4))
    }
}
