//
//  ViewPostView.swift
//  capture-mvp
//
//  Created by Alex Vawter on 2/5/23.
//

import SwiftUI

struct ViewPostView: View {
    let post: Post
    var body: some View {
        if let user = post.user {
            VStack{
                VStack(alignment: .leading, spacing: 100){
                    
                    Text("Request from @\(user.username)").font(.system(size: 25, weight:.bold, design: .default)).foregroundColor(.white)
                    
                    Text("Headline:\(post.headline)").foregroundColor(.white)
                    
                    Text("Address:\(post.address)").foregroundColor(.white)
                    
                    Text("Description:\(post.description)").foregroundColor(.white)
                    
                    
                    Button{
                    } label: {
                        Text("Fulfill Request").foregroundColor(.white)
                    }.padding().frame(width: 300, height: 55)
                        .background(Color("Light"))
                        .cornerRadius(15)
                }.padding(.horizontal)
            }.frame(maxWidth: .infinity, maxHeight: .infinity).edgesIgnoringSafeArea(.all)
                .background(Color("Dark"))
        }
    }
    
}

//struct ViewPostView_Previews: PreviewProvider {
//    static var previews: some View {
//        ViewPostView()
//    }
//}
