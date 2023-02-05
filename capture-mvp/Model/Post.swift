//
//  Post.swift
//  capture-mvp
//
//  Created by Alex Vawter on 2/3/23.
//

import FirebaseFirestoreSwift


struct Post: Identifiable, Decodable {
    @DocumentID var id: String?
    let headline: String
    let address: String
    let uid: String
    
    var user: User?
}
