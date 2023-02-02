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
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        VStack{
            VStack{
                AuthHeaderView(title1: "Get Started")
                
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
                            Image(systemName: "person").resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                                .foregroundColor(Color("Dark"))
                            
                            TextField("Username", text: $username)
                            
                        
                        }
                        Divider()
                            .background(Color(.darkGray))
                    }
                    VStack{
                        HStack{
                            Image(systemName: "person").resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                                .foregroundColor(Color("Dark"))
                            
                            TextField("Full Name", text: $fullname)
                            
                        
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

                    

                    
                    
                }.padding(32)
                Button{
                    viewModel.register(withEmail: email, password: password, fullname: fullname, username: username)
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
