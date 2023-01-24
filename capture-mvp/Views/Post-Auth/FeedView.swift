//
//  FeedView.swift
//  capture-mvp
//
//  Created by Alex Vawter on 1/23/23.
//

import SwiftUI

struct FullFeedView: View {
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(0...20, id: \.self) { _ in
                    FeedPostView().padding()
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
