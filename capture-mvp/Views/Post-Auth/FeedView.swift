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
        ScrollView{
            LazyVStack{
                ForEach(viewModel.posts) { post in
                    FeedPostView(post: post)
                        .padding()
                    Divider()
                        .overlay(.white)
                }
            }
        }.background(Color("Dark"))
        
        
        
        
        
    }
}

struct FullFeedView_Previews: PreviewProvider {
    static var previews: some View {
        FullFeedView()
    }
}
