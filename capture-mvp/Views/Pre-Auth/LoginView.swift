//
//  LoginView.swift
//  capture-mvp
//
//  Created by Alex Vawter on 1/23/23.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack{
            
            VStack(alignment: .leading){
                HStack{ Spacer()}
                Text("Welcome Back.").font(.largeTitle).fontWeight(.semibold)
                
            }.frame(height: 260)
                .padding(.leading)
                .background(Color("Dark")).foregroundColor(.white)
            Spacer()
        }.ignoresSafeArea()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
