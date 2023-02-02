//
//  ProfilePicView.swift
//  capture-mvp
//
//  Created by Alex Vawter on 2/2/23.
//

import SwiftUI

struct ProfilePicView: View {
    var body: some View {
        VStack{
            AuthHeaderView(title1: "Add a profile photo")
            
            Button{
                print("pic added")
            }label: {
                Image(systemName: "plus.circle").foregroundColor(Color("Light")).font(.system(size: 90)).padding(.top, 70)
            }
            
            Spacer()
        }.ignoresSafeArea()
    }
}

struct ProfilePicView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePicView()
    }
}
