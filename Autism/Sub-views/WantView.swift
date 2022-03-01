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
     /*
             VStack {
                 List(UserStore().wants.indices, id: \.self) { index in
                     NavigationLink(destination:
             CardModel(title : want.title.index,image: want.title.imageName)) {
                         HStack {
                             Text(wants[index].name)
                         }
                     }
                 }
             }
             
*/
             
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
