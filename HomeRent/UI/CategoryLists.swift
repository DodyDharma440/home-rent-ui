//
//  CategoryLists.swift
//  HomeRent
//
//  Created by Dodi Aditya on 27/02/23.
//

import SwiftUI

struct CategoryLists: View {
    @State var activeCategory = categories[0].id
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10.0) {
                ForEach(categories) { category in
                    if category.id == activeCategory {
                        CustomButton(label: category.name)
                    } else {
                        Button {
                            withAnimation(.easeIn(duration: 0.2)) {
                                activeCategory = category.id
                            }
                        } label: {
                            Text(category.name)
                                .fontWeight(.light)
                        }
                        .padding(.vertical, 12)
                        .padding(.horizontal, 16)
                        .background(.gray.opacity(0.05))
                        .cornerRadius(10)
                        .foregroundColor(.black.opacity(0.5))
                    }
                }
            }
            .frame(height: 42)
            .padding(.vertical, 16)
            .padding(.horizontal, 20)
        }
        .frame(height: 50)
    }
}

struct CategoryLists_Previews: PreviewProvider {
    static var previews: some View {
        CategoryLists()
    }
}
