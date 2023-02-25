//
//  TabBar.swift
//  capture-mvp
//
//  Created by Alex Vawter on 1/23/23.
//

import SwiftUI

enum Tab: String, CaseIterable{
    case house
    case plus
    case person
}

struct tabBar: View {
    @Binding var selectedTab: Tab
    private var fillImage: String{
        selectedTab.rawValue + ".fill"
    }
    
    
    var body: some View {
        VStack{
            HStack{
                ForEach(Tab.allCases, id: \.rawValue){
                    tab in
                    Spacer()
                    Image(systemName: selectedTab == tab ? fillImage :
                            tab.rawValue)
                    .scaleEffect(selectedTab == tab ? 1.25: 1.0)
                    .foregroundColor(selectedTab == tab ? Color("Light"): .white)
                    .font(.system(size: 20))
                    .onTapGesture{
                        withAnimation(.easeIn(duration: 0.1)){
                            selectedTab = tab
                        }
                    }
                    Spacer()
                }
                
            }.frame(width: nil, height: 60).background(Color("Dark")).cornerRadius(10).padding()
        }
    }
}

struct tabBar_Previews: PreviewProvider {
    static var previews: some View {
        tabBar(selectedTab: .constant(.house))
    }
}
