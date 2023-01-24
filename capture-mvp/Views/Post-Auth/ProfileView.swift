//
//  ProfileView.swift
//  capture-mvp
//
//  Created by Alex Vawter on 1/23/23.
//

import SwiftUI

struct profile: View {
    var body: some View {
            ZStack{
                Color("Dark")
                VStack{
                    VStack{
                        Image("circle").frame(height: 8).padding(60)
                        Text("Alex Vawter").font(.system(size: 30, weight:.bold, design: .default)).foregroundColor(.white)
                        Text("@avawt12").font(.system(size: 13, weight: .light, design: .default)).foregroundColor(.white)}.offset(y:-130).padding(10)
                    HStack{
                        Text("Image Library").font(.system(size: 20, weight: .medium, design: .default)).foregroundColor(.white).underline()
                        Image(systemName:"photo").foregroundColor(.white)
                    }.offset(x:-80, y:-70)
                    VStack{
                        HStack(spacing: 30){
                            Image("other")
                            Image("b2")
                            
                            
                        }
                    }.offset(y: -58)
                    
                    Button(action: {
                        // ...
                    }) {
                        Text("Create a request").foregroundColor(.white)
                    }.padding().frame(width: 300, height: 55)
                        .background(Color("Light"))
                        .cornerRadius(15)
                    
                    
                }.frame(maxWidth: .infinity, maxHeight: .infinity).edgesIgnoringSafeArea(.all)
                    .background(Color("Dark"))
        }
    }
}
struct profile_Previews: PreviewProvider {
    static var previews: some View {
        profile()
    }
}
