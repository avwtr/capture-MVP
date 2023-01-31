//
//  ViewRequestView.swift
//  capture-mvp
//
//  Created by Alex Vawter on 1/31/23.
//

import SwiftUI

struct ViewRequestView: View {
    var body: some View {
        VStack {
            Image(systemName: "person.circle").resizable().frame(width: 50, height: 50)
            Spacer().frame(height: 50)
            Text("Paul Hudson")
        }
        .contentShape(Rectangle())
        .onTapGesture {
            print("Show details for user")
        }
    }
}

struct ViewRequestView_Previews: PreviewProvider {
    static var previews: some View {
        ViewRequestView()
    }
}
