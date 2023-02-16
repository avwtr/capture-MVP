//
//  FeedPost.swift
//  capture-mvp
//
//  Created by Alex Vawter on 1/23/23.
//

import SwiftUI

struct FeedPostView: View {
    let post: Post
    var body: some View {
        
        Button {
            //
        }
        label: {
            VStack(alignment: .leading){
                
                
                HStack(alignment: .top, spacing: 12){
                    Image("asdf").frame(width: 56, height: 56).foregroundColor(Color("Light")).padding()
                    
                    if let user = post.user {
                        VStack(alignment: .leading, spacing: 18){
                            
                            HStack{
                                Text("@\(user.username)").font(.subheadline).bold()
                                Text("2 min ago").font(.caption)
                            }
                            Text(post.headline).font(.subheadline).multilineTextAlignment(.leading)
                            HStack{
                                Text(post.address).font(.subheadline).multilineTextAlignment(.leading).underline().foregroundColor(Color("Light"))
                                Image(systemName: "location")
                            }
                            
                            
                        }.padding()
                    }
                    
                }.foregroundColor(.white).background(Color("Dark"))
            }
            
            
            
        }
        
    }
}

//struct FeedPostView_Previews: PreviewProvider {
//    static var previews: some View {
//        FeedPostView()
//    }
//}

