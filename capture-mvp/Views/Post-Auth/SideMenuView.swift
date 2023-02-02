//
//  SideMenuView.swift
//  capture-mvp
//
//  Created by Alex Vawter on 2/1/23.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack(alignment: .leading){
            VStack(alignment: .leading){
                Circle()
                    .frame(width: 48, height: 48)
                VStack(alignment: .leading, spacing: 4){
                    Text("Alex Vawter").font(.headline)
                    
                    Text("@avawter").font(.caption)
                        .foregroundColor(.gray)
                }
                
            }.padding(.leading)
            ForEach(SideMenuViewModel.allCases, id: \.rawValue){option in
                HStack{
                    Image(systemName: option.imageName).font(.headline)
                    Text(option.title).font(.subheadline)
                    Spacer()
                }.frame(height: 40)
                    .padding(.horizontal)
            }.padding(.vertical, 15)
            Spacer()
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
