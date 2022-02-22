//
//  CreateView.swift
//  Autism
//
//  Created by Mariano Piscitelli on 17/02/22.
//

import SwiftUI

struct CreateView: View {
    @State private var showSheet: Bool = false
    @State private var showImagePicker: Bool = false
    @State private var sourceType: UIImagePickerController.SourceType = .camera
    @State var isShowed: Bool = false
    @State  var actualview: String = "Planner"
    @State private var image: UIImage?
    @State private var isShowingDetailView = false
    var body: some View {

        


        Text("PROVA")
            .navigationBarItems(trailing: Button(action: {
                self.showSheet = true


            }, label: {
  
                Image(systemName: "dot.viewfinder")
            })).actionSheet(isPresented: $showSheet) {
                ActionSheet(title: Text("Select Photo"), message: Text("Choose"), buttons: [
                    .default(Text("Photo Library")) {
                        self.showImagePicker = true
                        self.sourceType = .photoLibrary
                        
                    },
                    .default(Text("Camera")) {
                        
                        self.showImagePicker = true
                        self.sourceType = .camera
                    },
                    .cancel()
                ])
            }.sheet(isPresented: $showImagePicker) {
                ImagePicker(image: self.$image, isShown: self.$showImagePicker, isShowingDetailView: self.$isShowingDetailView,  sourceType: self.sourceType)
            }
        }
    }


struct CreateView_Previews: PreviewProvider {
    static var previews: some View {
        CreateView()
    }
}
