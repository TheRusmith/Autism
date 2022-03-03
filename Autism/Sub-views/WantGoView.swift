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
            HStack {
                updateBarView(view: "WantGo")
                    .padding(.top, 21)
            }
                ScrollView(showsIndicators: false){
                    VStack(alignment: . center, spacing: 30) {
                        ForEach(UserStore().wantgo,id: \.self) { WantGo in
                            NavigationLink(destination: FinalView()) {
                                CardModel(title: WantGo.title,image: WantGo.imageName)
                            }
                        }
                    }
                    .padding(.top, 9)
                    .padding(.leading, 9)
                    .padding(.trailing, 9)
                }
                .navigationBarHidden(true)

        }  .onAppear {
            speechservice.say("Io want go ")
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
