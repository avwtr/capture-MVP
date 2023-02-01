//
//  AuthViewModel.swift
//  capture-mvp
//
//  Created by Alex Vawter on 2/1/23.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject{
    
    @Published var userSession: FirebaseAuth.User?
    
    
    init(){
        self.userSession = Auth.auth().currentUser
        
        
        print("DEBUG: User session is \(self.userSession)")
    }
}

