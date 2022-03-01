//
//  CardView.swift
//  Autism
//
//  Created by Mariano Piscitelli on 18/02/22.
//

import SwiftUI

struct CardModel: View {
    
    let title : String
    let image : String
    internal init(title: String ,image: String ) {
        
        self.title = title
        self.image = image
    }
    
    var body: some View {
        
        VStack{
            
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
                      Image(image)
                    
                          .resizable()
                          .scaledToFit()
                          .cornerRadius(20)
                          .frame(width: 90, height: 90, alignment: .center)
                          .padding(.trailing, 230)
                  }
            }
        }
    }
}


struct CardModel_Previews: PreviewProvider {
    static var previews: some View {
        CardModel(title : "cane ",image: "fox")
        
    }
}
