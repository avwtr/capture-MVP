//
//  PostView.swift
//  capture-mvp
//
//  Created by Alex Vawter on 1/31/23.
//

import SwiftUI

struct PostView: View {
    @State private var headline =  ""
    @State private var description =  ""
    @State private var address = ""
    var body: some View {
        ZStack{
            VStack{
                VStack{
                    Text("Create request").foregroundColor(.white).font(.system(size: 25, weight:.bold, design: .default)).foregroundColor(.white)
                }
                Spacer().frame(height: 200)
                
                VStack{
                    VStack{
                        TextField("Headline", text: $headline ).foregroundColor(.white).textFieldStyle(.plain).padding().frame(height: 75)
                        
                        Rectangle().frame(width: 350, height: 1).foregroundColor(.white)
                        
                        TextField("Description", text: $description).foregroundColor(.white).textFieldStyle(.plain).padding().frame(height: 175)
                        }
                        
                    Rectangle().frame(width: 350, height: 1).foregroundColor(.white)
                        
                    TextField("Address", text: $address).foregroundColor(.white).textFieldStyle(.plain).padding().frame(height: 80)
                    
                    Rectangle().frame(width: 350, height: 1).foregroundColor(.white)
                    
                    Button(action: {
                        // ...
                    }) {
                        Text("Submit Request").foregroundColor(.white)
                    }.padding().frame(width: 300, height: 55)
                        .background(Color("Light"))
                        .cornerRadius(15).offset(y: 100)
                    
                }.offset(y: -170)
            }.offset(y: 50)
        }.frame(maxWidth: .infinity, maxHeight: .infinity).edgesIgnoringSafeArea(.all)
            .background(Color("Dark"))
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}
