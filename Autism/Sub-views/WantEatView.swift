//
//  EatView.swift
//  Autism
//
//  Created by Emanuele Bosco on 28/02/22.
//
import SwiftUI
struct WantEatView: View {
    @EnvironmentObject  var userStore: UserStore
    let speechservice = SpeechService()
    var body: some View {
        
        VStack{
            NavigationView{
                ScrollView(showsIndicators: false){
                    VStack(alignment: . center, spacing: 30) {
                        ForEach(UserStore().wanteat,id: \.self) { WantEat in
                            NavigationLink(destination: HomeView()) {
                                CardModel(title: WantEat.title,image: WantEat.imageName)
                            }
                        }
                    }
                    .padding(.top, 9)
                    .padding(.leading, 9)
                    .padding(.trailing, 9)
                }
                .navigationBarHidden(true)
            }
        }.onAppear  {
            speechservice.say("Io voglio mangiare")
        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}
struct WantEatView_Previews: PreviewProvider {
    static var previews: some View {
        WantEatView()
            .environmentObject(UserStore())
    }
}

