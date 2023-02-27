//
//  Button.swift
//  HomeRent
//
//  Created by Dodi Aditya on 26/02/23.
//

import SwiftUI

struct CustomButton: View {
    @State var label: String = "Button"
    @State var icon: String?
    
    @State var action: () -> Void = {}
    
    @State var iconOnly: Bool = false
    
    @State private var background = LinearGradient(colors: [Color("oceanBlue"), Color("lightBlue")], startPoint: .bottom, endPoint: .top)
    
    @State var withShadow = true
    
    var body: some View {
        Button {
            action()
        } label: {
            HStack {
                if icon?.boolValue != nil {
                    Image(systemName: icon!)
                }
                
                if !iconOnly {
                    Text(label)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .fontWeight(.medium)
                }
            }
            .foregroundColor(.white)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.vertical, 12)
        .padding(.horizontal, iconOnly ? 10 : 16)
        .background(background)
        .cornerRadius(10)
        .shadow(color: Color("oceanBlue").opacity(withShadow ? 0.5 : 0), radius: 6, y: 3)
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            CustomButton(icon: "arrow.right", iconOnly: true, withShadow: false).font(.system(size: 30))
        }
        .frame(height: 54)
    }
}
