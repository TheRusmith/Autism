//
//  FeelView.swift
//  Autism
//
//  Created by Mariano Piscitelli on 17/02/22.
//

import SwiftUI

struct FeelView: View {
    @EnvironmentObject  var userStore: UserStore
    var body: some View {
     
            VStack{
                NavigationView{
                    ScrollView(.vertical){
                        LazyVStack(alignment: . center, spacing: 30) {
                        
                                ZStack{
                    //                  ForEach(UserStore().wants,id: \.self) { want in
                                Rectangle()
                                    .frame(width: 320, height: 110, alignment: .center)
                                    .cornerRadius(20)
                                    .foregroundColor(.red)
                                    .shadow(radius: 5)
                                    .overlay {
                                        Text("Name")
                                            .font(.largeTitle)
                                            .fontWeight(.semibold)
                                            .foregroundColor(.white)
                                            .padding(.leading, 120)
                                    }
                                          Image("fox")
                                              .resizable()
                                              .scaledToFit()
                                              .cornerRadius(20)
                                              .frame(width: 130, height: 110, alignment: .center)
                                              .padding(.trailing, 210)
                                      }
                            
                                ZStack{
                    //                  ForEach(UserStore().wants,id: \.self) { want in
                                Rectangle()
                                    .frame(width: 320, height: 110, alignment: .center)
                                    .cornerRadius(20)
                                    .foregroundColor(.red)
                                    .shadow(radius: 5)
                                    .overlay {
                                        Text("Name")
                                            .font(.largeTitle)
                                            .fontWeight(.semibold)
                                            .foregroundColor(.white)
                                            .padding(.leading, 120)
                                    }
                                          Image("fox")
                                              .resizable()
                                              .scaledToFit()
                                              .cornerRadius(20)
                                              .frame(width: 130, height: 110, alignment: .center)
                                              .padding(.trailing, 210)
                                      }
                                
                            ZStack{
                //                  ForEach(UserStore().wants,id: \.self) { want in
                            Rectangle()
                                .frame(width: 320, height: 110, alignment: .center)
                                .cornerRadius(20)
                                .foregroundColor(.red)
                                .shadow(radius: 5)
                                .overlay {
                                    Text("Name")
                                        .font(.largeTitle)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                        .padding(.leading, 120)
                                }
                                      Image("fox")
                                          .resizable()
                                          .scaledToFit()
                                          .cornerRadius(20)
                                          .frame(width: 130, height: 110, alignment: .center)
                                          .padding(.trailing, 210)
                                  }
                        }
                    }
                    .navigationBarHidden(true)
                }
            }
            .ignoresSafeArea()
            
            .navigationBarHidden(true)
    }
}
struct FeelView_Previews: PreviewProvider {
    static var previews: some View {
        FeelView()
            .environmentObject(UserStore())
    }
}
