//
//  SideMenuView.swift
//  capture-mvp
//
//  Created by Alex Vawter on 2/1/23.
//

import SwiftUI

struct SideMenuView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    var body: some View {
        if let user = authViewModel.currentUser {
            VStack(alignment: .leading){
                VStack(alignment: .leading){
                    Circle()
                        .frame(width: 48, height: 48)
                    VStack(alignment: .leading, spacing: 4){
                        Text(user.fullname).font(.headline)
                        
                        Text("@\(user.username)").font(.caption)
                            .foregroundColor(.gray)
                    }
                    
                }.padding(.leading)
                ForEach(SideMenuViewModel.allCases, id: \.rawValue){ viewModel in
                    if viewModel == .signout {
                        Button{
                            authViewModel.logOut()
                        }label: {
                            SideMenuRowView(viewModel: viewModel)
                        }
                        
                    }
                    else if viewModel == .settings {
                        NavigationLink{
                            SettingsView()
                        }label: {
                            SideMenuRowView(viewModel: viewModel)
                        }
                    }
                    Spacer()
                }
            }
        }
    }
    
    struct SideMenuView_Previews: PreviewProvider {
        static var previews: some View {
            SideMenuView()
        }
    }
}
