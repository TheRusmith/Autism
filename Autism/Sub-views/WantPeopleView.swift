//
//  WantDrinkView.swift
//  Autism
//
//  Created by Emanuele Bosco on 28/02/22.
//
import SwiftUI
struct WantPeopleView: View {
    
    @EnvironmentObject  var userStore: UserStore
    let speechservice = SpeechService()
    var body: some View {
        
       // updateBarView(view: "People")
        VStack{
            HStack {
                BarView(messages: ["want","people"])
//                    .padding(.top, 21)
            }
                ScrollView(showsIndicators: false){
                    VStack(alignment: . center, spacing: 30) {
                        
                        Rectangle()
                            .frame(width: UIScreen.main.bounds.width*0.771, height: UIScreen.main.bounds.height*0.00001)
                            .opacity(0)
                        
                        ForEach(UserStore().wantpeople,id: \.self) { WantPeople in
                            NavigationLink(destination: FinalView(messagesFinal: ["want", "people", WantPeople.title] )) {
                                CardModelFav(title: WantPeople.title,image: WantPeople.imageName)
                            }
                        }
                    }
                    .padding(.top, 9)
                    .padding(.leading, 9)
                    .padding(.trailing, 9)

                .navigationBarHidden(true)
            }
        }
        .onAppear {
            speechservice.say("people")
        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}
struct WantPeopleView_Previews: PreviewProvider {
    static var previews: some View {
        WantPeopleView()
            .environmentObject(UserStore())
    }
}
