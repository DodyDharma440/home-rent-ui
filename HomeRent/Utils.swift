//
//  Utils.swift
//  HomeRent
//
//  Created by Dodi Aditya on 26/02/23.
//

import Foundation

func currencyFormat(_ value: Double, symbol: String? = "Rp") -> String {
    let formatter = NumberFormatter()
    formatter.usesGroupingSeparator = true
    formatter.numberStyle = .currency
    formatter.currencySymbol = ""
    
    let priceString = formatter.string(from: NSNumber(value: value))!
    return "\(symbol ?? "Rp") \(priceString.replacingOccurrences(of: ".00", with: ""))"
}
