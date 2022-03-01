//
//  WantDrinkView.swift
//  Autism
//
//  Created by Emanuele Bosco on 28/02/22.
//
import SwiftUI
struct WantDrinkView: View {
    @EnvironmentObject  var userStore: UserStore
    var body: some View {
        
        VStack{
            NavigationView{
                ScrollView(showsIndicators: false){
                    VStack(alignment: . center, spacing: 30) {
                        ForEach(UserStore().wantdrink,id: \.self) { WantDrink in
                            NavigationLink(destination: HomeView()) {
                                CardModel(title: WantDrink.title,image: WantDrink.imageName)
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
struct WantDrinkView_Previews: PreviewProvider {
    static var previews: some View {
        WantDrinkView()
            .environmentObject(UserStore())
    }
}
