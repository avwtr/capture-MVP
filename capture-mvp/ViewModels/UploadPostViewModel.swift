//
//  UploadPostViewModel.swift
//  capture-mvp
//
//  Created by Alex Vawter on 2/3/23.
//

import Foundation


class UploadPostViewModel: ObservableObject {
    @Published var didUploadPost = false
    let service = postService()
    
    func uploadPost(withHeadline headline: String, address: String, description: String){
        service.uploadPost(headline: headline, address: address, description: description) { success in
            if success {
                self.didUploadPost = true
            }else{
                //error message
            }
        }
    }
}
