//
//  BarView.swift.swift
//  Autism
//
//  Created by Mariano Piscitelli on 25/02/22.
//

import SwiftUI

struct BarView: View {
    @State var messages = ["fox","tired","angry"]
//    @EnvironmentObject  var userStore: UserStore
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
                                        ForEach(messages,id: \.self) { message in
                                            SmallcardImage(image: message)
                                            Image(systemName: "arrow.right")
                                                .font(.system(size: 30.0, weight: .bold))
                                        }
                                    }
                                    .padding(.leading, 10)
                                    
                                }
                                .padding(.top, 40)
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
                    }
                }
            .ignoresSafeArea()
            .navigationBarHidden(true)
    }
}
struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView()
         //   .environmentObject(UserStore())
    }
}
