//
//  BarView.swift.swift
//  Autism
//
//  Created by Mariano Piscitelli on 25/02/22.
//

import SwiftUI

struct BarView: View {
    @State var messages = [String]()
    let title : String
    let image : String
    internal init(title: String ,image: String ) {
        
        self.title = title
        self.image = image
    }

   // @EnvironmentObject  var userStore: UserStore
    var body: some View {
                
                ZStack{
                    
                    Rectangle()
                        .frame(width: 414, height: 180, alignment: .center)
                        .foregroundColor(Color.red)
                        .shadow(radius: 15)
                    HStack{
                        Rectangle()
                            .frame(width: 300, height: 132, alignment: .center)
                            .padding(.top, 48)
                            .opacity(0)
                            .font(.title)
                            .overlay {
                                ScrollView(.horizontal) {
                                    HStack {
                                      //BUG APPARE SOLO ULTIMA CARD
                                        ForEach(messages2,id: \.self) { message in
                                            SmallcardImage(title: message,image: message)
                                            Image(systemName: "arrow.right")
                                                .font(.system(size: 30.0, weight: .bold))
                                        }
                                    }
                                    .padding(.leading, 10)
                                    
                                }
                                .padding(.top, 42)
                            }
                        
                        Rectangle()
                                .frame(width: 2, height: 90, alignment: .center)
                                .padding(.top, 40)
                       Image("arrow")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80, alignment: .center)
                            .padding(.top, 40)
                        Spacer()
                    } .onAppear {
                        messages.append(title)
                        appendStep(step: title)
                    }
                }
            .ignoresSafeArea()
            .navigationBarHidden(true)
    }
}




@ViewBuilder func updateBarView(view: String) -> some View {
    switch view {
    case "Feel":
        BarView(title: "fox",image: "fox")
    case "WantView":
        BarView(title: "want",image: "fox")
    case "Go":
        BarView(title: "brother",image: "fox")
    case "Play":
        BarView(title: "play",image: "fox")
    case "People":
        BarView(title: "people",image: "fox")
    default:
        BarView(title: "brother",image: "ball")
    }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView(title: "fox",image: "ifeel")
         
    }
}
