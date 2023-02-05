//
//  FeedViewModel.swift
//  capture-mvp
//
//  Created by Alex Vawter on 2/3/23.
//

import Foundation


class FeedViewModel: ObservableObject {
    @Published var posts = [Post]()
    let service = postService()
    let userService = UserService()
    init() {
        fetchPosts()    
    }
    func fetchPosts(){
        service.fetchPosts { posts in
            self.posts = posts
            
            for i in 0..<posts.count {
                let uid = posts[i].uid
                self.userService.fetchUser(withUid: uid) { user in
                    self.posts[i].user = user
                }
            }
            
            }
        }
    }
