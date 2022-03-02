//
//  WantDrinkView.swift
//  Autism
//
//  Created by Emanuele Bosco on 28/02/22.
//
import SwiftUI
struct WantGoView: View {
    @EnvironmentObject  var userStore: UserStore
    let speechservice = SpeechService()
    var body: some View {
        
        VStack{
            NavigationView{
                ScrollView(showsIndicators: false){
                    VStack(alignment: . center, spacing: 30) {
                        ForEach(UserStore().wantgo,id: \.self) { WantGo in
                            NavigationLink(destination: HomeView()) {
                                CardModel(title: WantGo.title,image: WantGo.imageName)
                            }
                        }
                    }
                    .padding(.top, 9)
                    .padding(.leading, 9)
                    .padding(.trailing, 9)
                }
                .navigationBarHidden(true)
            }
        }  .onAppear {
            speechservice.say("Io voglio andare")
        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}
struct WantGoView_Previews: PreviewProvider {
    static var previews: some View {
        WantGoView()
            .environmentObject(UserStore())
    }
}
