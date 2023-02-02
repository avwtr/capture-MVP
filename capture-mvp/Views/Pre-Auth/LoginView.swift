//
//  LoginView.swift
//  capture-mvp
//
//  Created by Alex Vawter on 1/23/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        VStack{
            
            AuthHeaderView(title1: "Welcome Back")
            
            VStack(spacing: 40){
                
                VStack{
                    HStack{
                        Image(systemName: "envelope").resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color("Dark"))
                        
                        TextField("Email", text: $email)
                        
                    
                    }
                    Divider()
                        .background(Color(.darkGray))
                }
                VStack{
                    HStack{
                        Image(systemName: "lock").resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color("Dark"))
                        
                        TextField("Password", text: $password)
                        
                    
                    }
                    Divider()
                        .background(Color(.darkGray))
                }
                
            
            }.padding(.horizontal, 32)
                .padding(.top, 44)
            Button{
                viewModel.login(withEmail: email, password: password)
            }label: {
                Text("Sign in").font(.headline).foregroundColor(.white).frame(width: 340, height: 50).background(Color("Light")).clipShape(Capsule()).padding()
            }.shadow(color: .gray.opacity(0.5), radius: 10, x:0, y: 0).offset(y:40)
            Spacer()
            
            NavigationLink{
                CreateView().navigationBarHidden(true)
            }label: {
                HStack{
                    Text("Don't have an account?").font(.caption).fontWeight(.semibold)
                    
                    Text("Sign up").font(.footnote).fontWeight(.semibold)
                }
            }.padding(.bottom, 32).foregroundColor(Color("Light"))
        }.ignoresSafeArea()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
