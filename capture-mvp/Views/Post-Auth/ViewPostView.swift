//
//  ViewPostView.swift
//  capture-mvp
//
//  Created by Alex Vawter on 2/5/23.
//

import SwiftUI

struct ViewPostView: View {
    var body: some View {
        
        VStack{
            VStack(alignment: .leading, spacing: 100){
                
                Text("Request from @avawter").font(.system(size: 25, weight:.bold, design: .default)).foregroundColor(.white)
                
                Text("Headline:").foregroundColor(.white)
                
                Text("Address:").foregroundColor(.white)
                
                Text("Description:").foregroundColor(.white)
                
                
                Button{
                } label: {
                    Text("Fulfill Request").foregroundColor(.white)
                }.padding().frame(width: 300, height: 55)
                    .background(Color("Light"))
                    .cornerRadius(15).offset(y: 100)
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity).edgesIgnoringSafeArea(.all)
            .background(Color("Dark"))
    }
    
}

struct ViewPostView_Previews: PreviewProvider {
    static var previews: some View {
        ViewPostView()
    }
}
