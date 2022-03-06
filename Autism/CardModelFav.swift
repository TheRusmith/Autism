//
//  CardModelFav.swift
//  Autism
//
//  Created by Mariano Piscitelli on 03/03/22.
//

import SwiftUI

struct CardModelFav: View {
    
    let title : String
    let image : String
    internal init(title: String ,image: String ) {
        
        self.title = title
        self.image = image
    }
    
    var body: some View {
        
        VStack{
            HStack{
            ZStack{
                
            Rectangle()
                    .frame(width: 320, height: 90, alignment: .center)
                    .cornerRadius(20)
                    .foregroundColor(.random())
                    .shadow(radius: 5)
                    .overlay {
                        Text(title)
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(.leading, 120)
                    }
                
                Button {
                    
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                        .foregroundColor(.white)
                }
                    
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 90, height: 90, alignment: .center)
                    .cornerRadius(20)
                    .padding(.trailing, 230)
                
            }
            }
        }
    }
}


struct CardModelFav_Previews: PreviewProvider {
    static var previews: some View {
        CardModelFav(title : "cane ",image: "fox")
        
    }
}

