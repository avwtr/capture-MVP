//
//  MainView.swift
//  capture-mvp
//
//  Created by Alex Vawter on 1/23/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View{
        ZStack{
            VStack{
                Text("The Feed").font(.system(size: 30, weight:.bold, design: .default)).foregroundColor(.white).foregroundColor(Color(.white)).offset(x:-100, y:25).padding(75)
                ScrollView{
                    VStack(spacing:40){
                        ForEach(1..<6){i in
                            Rectangle().frame(width: 300, height: 100).foregroundColor(Color("Light")).cornerRadius(20).offset(y:20)
                        }
                    }
                    
                }
            }.frame(maxWidth: .infinity, maxHeight: .infinity).edgesIgnoringSafeArea(.all)
                .background(Color("Dark"))
        }
    }
}






struct MainView: View {
    @State private var selectedTab: Tab = .house
    @EnvironmentObject var viewModel: AuthViewModel
    init(){
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        
        if viewModel.userSession == nil {
            LoginView()
        }else{
            mainInterface
        }
        
        }
    }

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}


extension MainView{
    
    var mainInterface: some View {
        ZStack{
            VStack{
                TabView(selection: $selectedTab){
                    if selectedTab == .house{
                        FullFeedView()
                    }
                    if selectedTab == .camera{
                        CameraView()
                    }
                    if selectedTab == .person{
                        profile()
                    }
                }
            }
            VStack{
                Spacer()
                tabBar(selectedTab: $selectedTab)
            }.offset(y:50)
        }
        
    }
    
}
