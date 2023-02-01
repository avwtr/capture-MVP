//
//  AuthHeaderView.swift
//  capture-mvp
//
//  Created by Alex Vawter on 2/1/23.
//

import SwiftUI

struct AuthHeaderView: View {
    
    let title1: String
    
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{ Spacer()}
            Text(title1).font(.largeTitle).fontWeight(.semibold)
            
        }.frame(height: 260)
            .padding(.leading)
            .background(Color("Dark")).foregroundColor(.white)
            .clipShape(RoundedShape(corners: [.bottomRight]))
    }
}

struct AuthHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        AuthHeaderView(title1: "Welcome Back")
    }
}
