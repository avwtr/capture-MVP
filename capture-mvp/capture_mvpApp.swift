//
//  capture_mvpApp.swift
//  capture-mvp
//
//  Created by Alex Vawter on 1/23/23.
//

import SwiftUI
import Firebase

@main
struct capture_mvpApp: App {
    
    @StateObject var viewModel = AuthViewModel()
    
    init(){
        FirebaseApp.configure()
    }
    
    
    var body: some Scene {
        WindowGroup {
            MainView().environmentObject(viewModel)
        }
    }
}
