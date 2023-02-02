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
        
        
        
    }
    
    
    func login(withEmail email: String, password: String){
        print("DEBUG: Login with email \(email)")
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
                    print("DEBUG: Did upload user data..")
                }
        }
    }
    
    func logOut(){
        userSession = nil
        try? Auth.auth().signOut()
    }
}

