//
//  CardView.swift
//  Autism
//
//  Created by Mariano Piscitelli on 18/02/22.
//

import SwiftUI

struct CardModel: View {
    @EnvironmentObject  var userStore: UserStore
    //@State var title : String
  //  @State var image: String
    var body: some View {
        VStack{
            
            ZStack{
                  ForEach(UserStore().wants,id: \.self) { want in
                      
                  
                   
            Rectangle()
                .frame(width: 320, height: 110, alignment: .center)
                .cornerRadius(20)
                .foregroundColor(.red)
                .shadow(radius: 5)
                .overlay {
                    Text(want.title)
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding(.leading, 120)
                }
                
                Image(want.imageName)
                    .resizable()
                    .frame(width: 130, height: 110, alignment: .center)
                    .scaledToFill()
                .cornerRadius(20)
                    .padding(.trailing, 190)
                  }
            }
        }
    }
}

struct CardModel_Previews: PreviewProvider {
    static var previews: some View {
        CardModel()
            .environmentObject(UserStore())
    }
}
