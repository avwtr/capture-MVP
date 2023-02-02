//
//  ContentView.swift
//  capture-mvp
//
//  Created by Alex Vawter on 2/1/23.
//

import SwiftUI


struct ContentView: View {
    @State private var selectedTab: Tab = .house
    @EnvironmentObject var viewModel: AuthViewModel
    init(){
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        Group{
            if viewModel.userSession == nil {
                LoginView()
            }else{
                mainInt
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView()
        }
    }
}


extension ContentView{
    
    var mainInt: some View {
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
