//
//  WantDrinkView.swift
//  Autism
//
//  Created by Emanuele Bosco on 28/02/22.
//
import SwiftUI
struct WantPlayView: View {
    @EnvironmentObject  var userStore: UserStore
    var body: some View {
        
        VStack{
            NavigationView{
                ScrollView(showsIndicators: false){
                    VStack(alignment: . center, spacing: 30) {
                        ForEach(UserStore().wantplay,id: \.self) { WantPlay in
                            NavigationLink(destination: HomeView()) {
                                CardModel(title: WantPlay.title,image: WantPlay.imageName)
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
struct WantPlayView_Previews: PreviewProvider {
    static var previews: some View {
        WantPlayView()
            .environmentObject(UserStore())
    }
}
