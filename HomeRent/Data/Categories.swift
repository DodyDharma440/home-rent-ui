//
//  Categories.swift
//  HomeRent
//
//  Created by Dodi Aditya on 27/02/23.
//

import Foundation

struct Category: Decodable, Identifiable {
    var id = UUID()
    var name: String
}

var categories: [Category] = [Category(name: "House"), Category(name: "Apartment"), Category(name: "Hotel"), Category(name: "Villa"), Category(name: "Cotage")]
