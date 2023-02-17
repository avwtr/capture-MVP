//
//  FeedView.swift
//  capture-mvp
//
//  Created by Alex Vawter on 1/23/23.
//

import SwiftUI

struct FullFeedView: View {
    @ObservedObject var viewModel = FeedViewModel()
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVStack{
                    ForEach(viewModel.posts) { post in
        
                            NavigationLink(destination: ViewPostView(post: post), label: {
                                FeedPostView(post: post)
                                    .padding()
                            }).frame(height: 200)
                        Divider()
                            .overlay(.white)
                    }
                }.background(Color("Dark"))
            }.background(Color("Dark"))
            
            
            
        }
        
    }
}

struct FullFeedView_Previews: PreviewProvider {
    static var previews: some View {
        FullFeedView()
    }
}
