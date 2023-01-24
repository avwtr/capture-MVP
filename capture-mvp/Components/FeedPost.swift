//
//  FeedPost.swift
//  capture-mvp
//
//  Created by Alex Vawter on 1/23/23.
//

import SwiftUI

struct FeedPostView: View {
    var body: some View {
        VStack(alignment: .leading){
            
            
            HStack(alignment: .top, spacing: 12){
                Image("asdf").frame(width: 56, height: 56).foregroundColor(Color("Light")).padding()
                
                
                VStack(alignment: .leading, spacing: 18){
                    HStack{
                        Text("@avawt12").font(.subheadline).bold()
                        Text("2 min ago").font(.caption)
                    }
                    Text("Need status images of a commercial property").font(.subheadline).multilineTextAlignment(.leading)
                    HStack{
                        Text("149 Brown Rd, Suffolk  VA").font(.subheadline).multilineTextAlignment(.leading).underline().foregroundColor(Color("Light"))
                        Image(systemName: "location")
                    }
                    
                    
                }.padding()

            }.foregroundColor(.white).background(Color("Dark"))
        }
        
        
        
        
        
    }
}

struct FeedPostView_Previews: PreviewProvider {
    static var previews: some View {
        FeedPostView()
    }
}
