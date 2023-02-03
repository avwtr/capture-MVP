//
//  User.swift
//  capture-mvp
//
//  Created by Alex Vawter on 2/3/23.
//

import FirebaseFirestoreSwift


struct User: Identifiable, Decodable {
    @DocumentID var id: String?
    let username: String
    let fullname: String
    let email: String
}
