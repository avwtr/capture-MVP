//
//  ProfileView.swift
//  capture-mvp
//
//  Created by Alex Vawter on 1/23/23.
//

import SwiftUI

struct profile: View {
    @State private var showMenu = false
    var body: some View {
        NavigationView{
            ZStack{
               
                VStack{
                    if showMenu {
                        ZStack{
                            Color(.black).opacity(0.25)
        
                        }.onTapGesture {
                            withAnimation(.easeInOut){
                                showMenu = false
                            }
                        }
                    }
                    VStack{
                        HStack{
                            Button{
                                withAnimation(.easeInOut) {showMenu.toggle()}
                            }label: {
                                Image(systemName: "gear").foregroundColor(.white).font(.system(size: 28))}
                        }.offset(x: -130, y: 20)
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
                    
                    NavigationLink(destination: PostView(), label: {Text("Create a Request").bold().frame(width: 280, height: 50)
                        .background(Color("Light")).foregroundColor(.white).cornerRadius(10)})
                    
                }.frame(maxWidth: .infinity, maxHeight: .infinity).edgesIgnoringSafeArea(.all)
                    .background(Color("Dark"))
                SideMenuView().frame(width: 300).background(showMenu ? Color.white: Color.clear).offset(x: showMenu ? -50: -300, y: 0)
                    
            }
            
        }
    }
}
struct profile_Previews: PreviewProvider {
    static var previews: some View {
        profile()
    }
}
