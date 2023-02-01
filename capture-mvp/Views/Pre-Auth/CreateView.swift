//
//  CreateView.swift
//  capture-mvp
//
//  Created by Alex Vawter on 1/23/23.
//

import SwiftUI

struct CreateView: View {
    @State private var email = ""
    @State private var username = ""
    @State private var fullname = ""
    @State private var password = ""
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack{
            VStack{
                VStack(alignment: .leading){
                    HStack{ Spacer()}
                    Image("portal").resizable().frame(width: 200.0, height:65.0).offset(x: 50)
        
                    
                }.frame(height: 260)
                    .padding(.leading)
                    .background(Color("Dark")).foregroundColor(.white)
                    .clipShape(RoundedShape(corners: [.bottomRight]))
                
                VStack(spacing: 40){
                    CustomInputField(imageName: "envelope", placeholderText: "Email", text: $email)
                    CustomInputField(imageName: "person", placeholderText: "Username",text: $username)
                    CustomInputField(imageName: "person", placeholderText: "Full name",text: $fullname)
                    CustomInputField(imageName: "lock", placeholderText: "Password",text: $password)
                    
                }.padding(32)
                Button{
                    print("Sign up here...")
                }label: {
                    Text("Sign up").font(.headline).foregroundColor(.white).frame(width: 340, height: 50).background(Color("Light")).clipShape(Capsule()).padding()
                }.shadow(color: .gray.opacity(0.5), radius: 10, x:0, y: 0).offset(y:40)
                
                Spacer()
                
                Button {
                    presentationMode.wrappedValue.dismiss()
                }label: {
                    HStack{
                        Text("Already have an account?").font(.footnote)
                        Text("Sign in")
                            .font(.footnote).fontWeight(.semibold)
                    }
                }.padding(.bottom, 32).foregroundColor(Color("Light"))
                
            }.ignoresSafeArea()
        }
    }
}

struct CreateView_Previews: PreviewProvider {
    static var previews: some View {
        CreateView()
    }
}
