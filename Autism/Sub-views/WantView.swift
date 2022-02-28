//
//  WantView.swift
//  Autism
//
//  Created by Emanuele Bosco on 17/02/22.

import SwiftUI
struct WantView: View {
    @EnvironmentObject  var userStore: UserStore
    var body: some View {
        
        VStack{
            BarView()
                .padding(.top, 21)
            NavigationView{
                ScrollView(showsIndicators: false){
                    VStack(alignment: . center, spacing: 30) {
                        ForEach(UserStore().wants,id: \.self) { want in
                            NavigationLink(destination: WantEatView()) {
                                CardModel(title: want.title,image: want.imageName)
                            }
                        }
                    }
                    .padding(.top, 9)
                    .padding(.leading, 9)
                    .padding(.trailing, 9)
                }
                .navigationBarHidden(true)
            }
        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}
struct WantView_Previews: PreviewProvider {
    static var previews: some View {
        WantView()
            .environmentObject(UserStore())
    }
}
