//
//  CustomInputField.swift
//  capture-mvp
//
//  Created by Alex Vawter on 1/31/23.
//

import SwiftUI

struct CustomInputField: View {
    
    let imageName: String
    let placeholderText: String
    @Binding var text: String
    var body: some View {
        VStack{
            HStack{
                Image(systemName: imageName).resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color("Dark"))
                
                TextField(placeholderText, text: $text)
            }
            Divider()
                .background(Color("Dark"))
        }
    }
}

struct CustomInputField_Previews: PreviewProvider {
    static var previews: some View {
        CustomInputField(imageName: "envelope", placeholderText: "Email", text: .constant(""))
    }
}
