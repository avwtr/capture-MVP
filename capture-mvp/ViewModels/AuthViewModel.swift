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
    @Published var didAuthenticateUser = false
    
    init(){
        self.userSession = Auth.auth().currentUser
        
        
        
    }
    
    
    func login(withEmail email: String, password: String){
        Auth.auth().signIn(withEmail: email, password: password){ result, error in
            if let error = error{
                print("DEBUG: Failed to sign in with error \(error.localizedDescription)")
                return
            }
            guard let user = result?.user else {return}
            self.userSession = user
            print("DEBUG: User logged in")
        }
    }
    func register(withEmail email: String, password: String, fullname: String, username: String){
        Auth.auth().createUser(withEmail: email, password: password){
            result, error in
            if let error = error {
                print("DEBUG: Failed to register with error \(error.localizedDescription)")
                return
            }
            guard let user = result?.user else {return}
            self.userSession = user
            
            print("DEBUG: REG user succesfully")
            print("DEBUG: USER IS \(self.userSession)")
            
            let data = ["email": email, "username": username.lowercased(), "fullname": fullname, "uid": user.uid]
            Firestore.firestore().collection("users")
                .document(user.uid)
                .setData(data){_ in
                    self.didAuthenticateUser = true
                }
        }
    }
    
    func logOut(){
        userSession = nil
        
        //signs out user on server side
        try? Auth.auth().signOut()
    }
}

