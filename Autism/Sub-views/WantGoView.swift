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
                BarView(messages: ["want","go"])
//                    .padding(.top, 21)
            }
                ScrollView(showsIndicators: false){
                    VStack(alignment: . center, spacing: 30) {
                        
                        Rectangle()
                            .frame(width: UIScreen.main.bounds.width*0.771, height: UIScreen.main.bounds.height*0.00001)
                            .opacity(0)
                        
                        ForEach(UserStore().wantgo,id: \.self) { WantGo in
                            NavigationLink(destination: FinalView(messagesFinal: ["want", "go", WantGo.title] )) {
                                CardModelFav(title: WantGo.title,image: WantGo.imageName)
                            }
                        }
                    }
                    .padding(.top, 9)
                    .padding(.leading, 9)
                    .padding(.trailing, 9)
                }
                .navigationBarHidden(true)

        }  .onAppear {
            speechservice.say("go ")
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
