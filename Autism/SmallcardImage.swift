//
//  SmallcardImage.swift
//  Autism
//
//  Created by Francesco Viola on 18/02/22.
//

import SwiftUI

struct SmallcardImage: View {
   
        let image : String
        internal init(image: String ) {
            
            self.image = image
        }
    
    var body: some View {
        VStack {
            HStack {
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .cornerRadius(10)
            }
        }


        }
}

struct SmallcardImage_Previews: PreviewProvider {
    static var previews: some View {
        SmallcardImage(image: "sad" )
    }
}
