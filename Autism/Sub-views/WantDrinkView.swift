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
                updateBarView(view: "WantDrinkView")
                    .padding(.top, 21)
            }
                ScrollView(showsIndicators: false){
                    VStack(alignment: . center, spacing: 30) {
                        ForEach(UserStore().wantdrink,id: \.self) { WantDrink in
                            NavigationLink(destination: FinalView()) {
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
        .onAppear  {
            speechservice.say("Io voglio bere") 
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
