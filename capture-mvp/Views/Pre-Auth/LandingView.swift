//
//  LandingView.swift
//  capture-mvp
//
//  Created by Alex Vawter on 1/23/23.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        ZStack{
            VStack{
                Image("capture-lowercase").resizable().frame(width: 200.0, height:65.0).offset(y:-220)
                
                Text("The Visual World at your Fingertips").font(.system(size: 20, weight: .ultraLight, design: .default)).offset(y: -190).foregroundColor(Color("Light"))
            }
            
            Button(action: {
                // ...
            }) {
                Text("Create an account").foregroundColor(.white)
            }.padding().frame(width: 300, height: 50)
                .background(Color("Light"))
                .cornerRadius(15).offset(y:210)
            Button(action: {
                //
            }){
                Text("Already have an account?").foregroundColor(Color("Light"))
                Text("Login here").foregroundColor(.white)
            }.offset(y:300)
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity).background(Color("Dark"))
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView()
    }
}

