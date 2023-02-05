//
//  PostService.swift
//  capture-mvp
//
//  Created by Alex Vawter on 2/3/23.
//

import Firebase

struct postService {
    
    func uploadPost(headline: String, address: String, description: String, completion: @escaping(Bool) -> Void){
        guard let uid = Auth.auth().currentUser?.uid else {return}
        
        let data = ["uid": uid,
                    "headline": headline,
                    "address": address,
                    "description": description,
                    "timestamp": Timestamp(date: Date())] as [String : Any]
        
        Firestore.firestore().collection("posts")
            .document().setData(data) { error in
                if let error = error {
                    print("DEBUG: Failed to upload post \(error.localizedDescription)")
                    completion(false)
                    return
                }
                completion(true)
            }
    }
    
    
    func fetchPosts(completion: @escaping([Post]) -> Void) {
        Firestore.firestore().collection("posts").getDocuments { snapshot, _ in
            guard let documents = snapshot?.documents else {return}
            let posts = documents.compactMap({ try? $0.data(as: Post.self)})
            
            completion(posts)
        }
    }

}
