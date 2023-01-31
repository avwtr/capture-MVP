//
//  CameraView.swift
//  capture-mvp
//
//  Created by Alex Vawter on 1/23/23.
//

import SwiftUI

struct CameraView: View {
    @State private var capturedImage: UIImage? = nil
    @State private var isCustomCamViewPresented = false
    
    var body: some View {
        ZStack{
            if capturedImage != nil {
                Image(uiImage: capturedImage!).resizable().scaledToFill().ignoresSafeArea()
            }else{
                Color(UIColor.systemBackground)
            }
            VStack{
                Spacer()
                Button(action: {
                    isCustomCamViewPresented.toggle()
                }, label: {
                    Image(systemName: "camera.fill").font(.largeTitle).padding().background(Color.black).foregroundColor(.white).clipShape(Circle())
                }).padding(.bottom)
                    .sheet(isPresented: $isCustomCamViewPresented, content: {
                        CustomCamView(capturedImage: $capturedImage)
                    })
            }
        }
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
    }
}
