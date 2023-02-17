//
//  User.swift
//  capture-mvp
//
//  Created by Alex Vawter on 2/3/23.
//

import FirebaseFirestoreSwift
import Firebase

struct User: Identifiable, Decodable {
    @DocumentID var id: String?
    let username: String
    let fullname: String
    let email: String
    let uid: String
    var isCurrentUser: Bool { return Auth.auth().currentUser?.uid == id}
}
