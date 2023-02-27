//
//  HomeView.swift
//  HomeRent
//
//  Created by Dodi Aditya on 26/02/23.
//

import SwiftUI

struct HomeView: View {
    @State var hasNotification = true
    
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                HomeHeader()
                    .padding(.horizontal, 6)
                    .padding()
                CategoryLists()
                    .padding(.bottom, 24)
                HouseSlider()
                    .padding(.bottom, 24)
                HomeLists()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
