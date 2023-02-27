//
//  HouseList.swift
//  HomeRent
//
//  Created by Dodi Aditya on 28/02/23.
//

import SwiftUI

struct HouseList: View {
    var house: House
    
    var body: some View {
        HStack(alignment: .top, spacing: 12.0) {
            Image(house.thumbnail)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 74, height: 70)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 10.0) {
                Text(house.name)
                Text("\(currencyFormat(house.pricePerYear)) / Year")
                    .font(.caption)
                    .foregroundColor(Color("oceanBlue"))
                HStack(spacing: 10.0) {
                    HStack {
                        Image(systemName: "bed.double")
                        Text("\(house.bedroomCount) Bedroom")
                    }
                    .font(.caption)
                    .foregroundColor(.gray.opacity(0.8))
                    HStack {
                        Image(systemName: "shower.fill")
                        Text("\(house.bathroomCount) Bathroom")
                    }
                    .font(.caption)
                    .foregroundColor(.gray.opacity(0.8))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
        .frame(maxHeight: 70)
    }
}

struct HouseList_Previews: PreviewProvider {
    static var previews: some View {
        HouseList(house: House(name: "Dreamsville House", address: "Jl. Sultan Iskandar Muda", distance: "1.8", thumbnail: "dreamsville", pricePerYear: 2500000000, bedroomCount: 6, bathroomCount: 4))
    }
}
