//
//  Button.swift
//  HomeRent
//
//  Created by Dodi Aditya on 26/02/23.
//

import SwiftUI

struct CustomButton: View {
    @State var label: String = "Button"
    @State var icon: String = "arrow.left"
    
    @State var action: () -> Void = {}
    
    @Binding var iconOnly: Bool
    
    var body: some View {
        Button {
            action()
        } label: {
            HStack {
                Image(systemName: icon)
                if !iconOnly {
                    Text(label)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .fontWeight(.medium)
                }
            }
            .foregroundColor(.white)
            
        }
        .padding(.vertical, 12)
        .padding(.horizontal, iconOnly ? 10 : 16)
        .background(LinearGradient(colors: [Color("oceanBlue"), Color("lightBlue")], startPoint: .bottom, endPoint: .top))
        .cornerRadius(10)
        .shadow(color: Color("oceanBlue").opacity(0.5), radius: 6, y: 3)
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(icon: "arrow.right", iconOnly: .constant(true)).font(.system(size: 30))
    }
}
