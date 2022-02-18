//
//  CardView.swift
//  Autism
//
//  Created by Mariano Piscitelli on 18/02/22.
//

import SwiftUI

struct CardModel: View {
    var body: some View {
        VStack{
            ZStack{
            Rectangle()
                .frame(width: 320, height: 110, alignment: .center)
                .cornerRadius(20)
                .foregroundColor(.red)
                .shadow(radius: 5)
                .overlay {
                    Text("Title")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding(.leading, 120)
                }
                
                Image("fox")
                    .resizable()
                    .frame(width: 130, height: 110, alignment: .center)
                    .scaledToFit()
                .cornerRadius(20)
                    .padding(.trailing, 190)
            }
        }
    }
}

struct CardModel_Previews: PreviewProvider {
    static var previews: some View {
        CardModel()
    }
}
