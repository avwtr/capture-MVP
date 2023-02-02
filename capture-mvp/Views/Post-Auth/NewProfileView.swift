//
//  NewProfileView.swift
//  capture-mvp
//
//  Created by Alex Vawter on 2/2/23.
//

import SwiftUI

struct NewProfileView: View {
    @State private var showMenu = false
    var body: some View {
        
        
        
        VStack(){
            HStack(){
                Button{
                    showMenu.toggle()
                }label: {
                    Image(systemName: "gear").foregroundColor(.white).font(.system(size: 28))}
            }.offset(x: -120)
            
            
            Text("Alex Vawter")
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity).edgesIgnoringSafeArea(.all)
            .background(Color("Dark"))
    }
}

struct NewProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NewProfileView()
    }
}
