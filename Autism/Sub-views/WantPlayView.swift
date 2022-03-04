
//
//  WantDrinkView.swift
//  Autism
//
//  Created by Emanuele Bosco on 28/02/22.
//
import SwiftUI
struct WantPlayView: View {
    @EnvironmentObject  var userStore: UserStore
    let speechservice = SpeechService()
    var body: some View {
        
        VStack{
           
            HStack {
                BarView(messages: ["want", "play"])
//                updateBarView(view: "WantPlay")
                    .padding(.top, 21)
            }
                ScrollView(showsIndicators: false){
                    VStack(alignment: . center, spacing: 30) {
                        ForEach(UserStore().wantplay,id: \.self) { WantPlay in
                            NavigationLink(destination: FinalView(messagesFinal: ["want", "play", WantPlay.title] )) {
                                CardModelFav(title: WantPlay.title,image: WantPlay.imageName)
                            }
                        }
                    }
                    .padding(.top, 9)
                    .padding(.leading, 9)
                    .padding(.trailing, 9)
                }
              .navigationBarHidden(true)

        }  .onAppear  {
            speechservice.say("play")
            
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
