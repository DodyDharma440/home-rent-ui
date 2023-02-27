//
//  HomeHeader.swift
//  HomeRent
//
//  Created by Dodi Aditya on 26/02/23.
//

import SwiftUI

struct HomeHeader: View {
    @State var hasNotif = true
    @State var notifBtn: () -> Void = {}
    
    @State var searchInput = ""
    
    var body: some View {
        VStack(spacing: 24.0) {
            HStack {
                VStack(alignment: .leading, spacing: 8.0) {
                    Text("Location")
                        .foregroundColor(.gray)
                    
                    HStack(spacing: 8.0) {
                        Text("Jakarta")
                            .font(.title2)
                            .fontWeight(.bold)
                        Image(systemName: "chevron.down")
                            .foregroundColor(.gray)
                            .font(.system(size: 12))
                    }
                }
                
                Spacer()
                
                Button {
                    notifBtn()
                } label: {
                    ZStack {
                        Image(systemName: "bell")
                            .font(.system(size: 24))
                            .foregroundColor(.black)
                        if hasNotif {
                            Circle()
                                .fill(.red)
                                .frame(width: 8, height: 8)
                                .offset(x: 12, y: -12)
                        }
                    }
                }
            }
            
            HStack(spacing: 12.0) {
                HStack {
                    Image(systemName: "magnifyingglass")
                        .padding(.leading, 20)
                        .foregroundColor(.black.opacity(0.4))
                    TextField("Search addresses, or near you", text: $searchInput)
                        .padding(.vertical, 14)
                        .padding(.leading, 6)
                        .padding(.trailing, 20)
                }
                .frame(maxHeight: .infinity)
                .background(.gray.opacity(0.07))
                .cornerRadius(10)
                CustomButton(icon: "line.3.horizontal.decrease.circle", iconOnly: true)
                    .font(.system(size: 20))
                    .frame(width: 48)
            }
            .frame(height: 48)
            
        }
    }
}

struct HomeHeader_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
