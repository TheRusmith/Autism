//
//  BarView.swift.swift
//  Autism
//
//  Created by Mariano Piscitelli on 25/02/22.
//

import SwiftUI

struct BarView: View {
    
    @State var messages = [String]()
//    let title : String
//    let image : String
   
    
    
   // @EnvironmentObject  var userStore: UserStore
    var body: some View {
                
                ZStack{
                    
                    Rectangle()
                        .frame(width: 414, height: 180, alignment: .center)
                        .foregroundColor(Color.red)
                        .shadow(radius: 15)
                    HStack{
                        Rectangle()
                            .frame(width: 414, height: 132, alignment: .center)
                            .padding(.top, 48)
                            .opacity(0)
                            .font(.title)
                            .overlay {
                                ScrollView(.horizontal) {
                                    HStack {
                                        Spacer()
                                      //BUG APPARE SOLO ULTIMA CARD
                                        ForEach(messages,id: \.self) { message in
                                            SmallcardImage(title: message,image: message)
                                                .padding(25)
//                                            Text("-")
//                                                .font(.system(size: 30.0, weight: .bold))
                                            Spacer()
                                        }
                                        
                                    }
//                                    .padding(.leading, 10)
                                    
                                }
                                .padding(.top, 42)
                            }
//                        Spacer()
                    } 
                }
            .ignoresSafeArea()
            .navigationBarHidden(true)
    }
}




@ViewBuilder func updateBarView(view: String) -> some View {
    switch view {
    case "Feel":
        BarView(messages: ["feel"])
    case "WantView":
        BarView(messages: ["want"])
    case "WantEat":
        BarView(messages: ["want","burger"])
    case "WantDrink":
        BarView(messages: ["want","climbing"])
    case "WantPlay":
        BarView(messages: ["want","ball"])
    case "WantGo":
        BarView(messages: ["want","park"])
    case "WantPeople":
        BarView(messages: ["want","dad"])
    default:
        BarView(messages: ["want"])
    }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView(messages: ["cola","cottoncandy","chocolate"])
         
    }
}
