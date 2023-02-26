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
        VStack {
            HomeHeader()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .padding(.horizontal, 6)
        .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
