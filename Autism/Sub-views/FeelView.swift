//
//  FeelView.swift
//  Autism
//
//  Created by Mariano Piscitelli on 17/02/22.

import SwiftUI
struct FeelView: View {
    @EnvironmentObject  var userStore: UserStore
    var body: some View {
        
        VStack{
            BarView()
                .padding(.top, 21)
            NavigationView{
                ScrollView(showsIndicators: false){
                    VStack(alignment: . center, spacing: 30) {
                        ForEach(UserStore().wants,id: \.self) { want in
                            NavigationLink(destination: HomeView()) {
                                CardModel(title: want.title,image: want.imageName)
                            }
                        }
                    }
                    .padding(.top, 9)
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
