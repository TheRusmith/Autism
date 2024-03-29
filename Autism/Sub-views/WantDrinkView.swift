//
//  WantDrinkView.swift
//  Autism
//
//  Created by Emanuele Bosco on 28/02/22.
//
import SwiftUI
struct WantDrinkView: View {
    @EnvironmentObject  var userStore: UserStore
    let speechservice = SpeechService()
    var body: some View {
        
        VStack{
//            updateBarView(view: "Drink")
            HStack {
                BarView(messages: ["want","drink"])
//                updateBarView(view: "WantDrink")
//                    .padding(.top, 21)
            }
                ScrollView(showsIndicators: false){
                    VStack(alignment: . center, spacing: 30) {
                        
                        Rectangle()
                            .frame(width: UIScreen.main.bounds.width*0.771, height: UIScreen.main.bounds.height*0.00001)
                            .opacity(0)
                        
                        ForEach(UserStore().wantdrink,id: \.self) { WantDrink in
                            NavigationLink(destination: FinalView(messagesFinal: ["want", "drink", WantDrink.title] )) {
                                CardModelFav(title: WantDrink.title,image: WantDrink.imageName)
                            }
                        }
                    }
//                    .padding(.top, 9)
                    .padding(.leading, 9)
                    .padding(.trailing, 9)
                }
                .navigationBarHidden(true)

        }
        .onAppear  {
            speechservice.say("drink") 
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
