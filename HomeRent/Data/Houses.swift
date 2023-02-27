//
//  HousesHorizontal.swift
//  HomeRent
//
//  Created by Dodi Aditya on 26/02/23.
//

import Foundation

struct House: Decodable, Identifiable {
    var id = UUID()
    var name: String
    var address: String
    var distance: String
    var thumbnail: String
    var pricePerYear: Double
    var bedroomCount: Int
    var bathroomCount: Int
}

var houseSliders: [House] = [
    House(name: "Dreamsville House", address: "Jl. Sultan Iskandar Muda", distance: "1.8", thumbnail: "dreamsville", pricePerYear: 2500000000, bedroomCount: 6, bathroomCount: 4),
    House(name: "Ascot House", address: "Jl. Cilandak Tengah", distance: "3.0", thumbnail: "ascot", pricePerYear: 2500000000, bedroomCount: 6, bathroomCount: 3)
]


var houseLists: [House] = [
    House(name: "Orchad House", address: "Jl. Sultan Iskandar Muda", distance: "1.4", thumbnail: "orchad", pricePerYear: 2000000000, bedroomCount: 6, bathroomCount: 6),
    House(name: "The Hollies House", address: "Jl. Cilandak Timur", distance: "2.0", thumbnail: "the-hollies", pricePerYear: 2300000000, bedroomCount: 6, bathroomCount: 5),
    House(name: "Dreamsville House", address: "Jl. Sultan Iskandar Muda", distance: "1.8", thumbnail: "dreamsville", pricePerYear: 2500000000, bedroomCount: 6, bathroomCount: 4),
    House(name: "Ascot House", address: "Jl. Cilandak Tengah", distance: "3.0", thumbnail: "ascot", pricePerYear: 2500000000, bedroomCount: 6, bathroomCount: 3),
    House(name: "Orchad House", address: "Jl. Sultan Iskandar Muda", distance: "1.4", thumbnail: "orchad", pricePerYear: 2000000000, bedroomCount: 6, bathroomCount: 6),
    House(name: "The Hollies House", address: "Jl. Cilandak Timur", distance: "2.0", thumbnail: "the-hollies", pricePerYear: 2300000000, bedroomCount: 6, bathroomCount: 5),
    House(name: "Dreamsville House", address: "Jl. Sultan Iskandar Muda", distance: "1.8", thumbnail: "dreamsville", pricePerYear: 2500000000, bedroomCount: 6, bathroomCount: 4),
    House(name: "Ascot House", address: "Jl. Cilandak Tengah", distance: "3.0", thumbnail: "ascot", pricePerYear: 2500000000, bedroomCount: 6, bathroomCount: 3),
]
