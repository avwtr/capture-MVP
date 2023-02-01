//
//  MainView.swift
//  capture-mvp
//
//  Created by Alex Vawter on 1/23/23.
//

import SwiftUI


struct MainView: View {
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
                mainInterface
            }
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            MainView()
        }
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
