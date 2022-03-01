//
//  SmallcardImage.swift
//  Autism
//
//  Created by Francesco Viola on 18/02/22.
//

import SwiftUI

struct SmallcardImage: View {
   
        let image : String
        let title: String
    internal init(title : String,image: String ) {
            
            self.title = title
            self.image = image
        }
    
    var body: some View {
        VStack {
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .foregroundColor(.white)
                    .frame(width: 60, height: 60)
                    .cornerRadius(10)
            
            Text(title)
                   .background(Color.black)
                   .foregroundColor(.white)
                   .font(.headline)
                   .cornerRadius(5)
        }


        }
}

struct SmallcardImage_Previews: PreviewProvider {
    static var previews: some View {
        SmallcardImage(title: "scarafaggio",image: "sad")
    }
}
