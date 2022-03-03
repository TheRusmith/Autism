//
//  WantView.swift
//  Autism
//
//  Created by Emanuele Bosco on 17/02/22.

import SwiftUI
struct WantView: View {
    
    @ViewBuilder func getView(view: String) -> some View {
        switch view {
        case "Drink":
            WantDrinkView()
        case "Eat":
            WantEatView()
        case "Go":
            WantGoView()
        case "Play":
            WantPlayView()
        case "People":
            WantPeopleView()
        default:
            WantDrinkView()
        }
    }
    
    @EnvironmentObject  var userStore: UserStore
    var body: some View {
        
        VStack{
          
            HStack {
                updateBarView(view: "WantView")
                    .padding(.top, 21)
            }
             
//            NavigationView{
                ScrollView(showsIndicators: false){
                    VStack(alignment: . center, spacing: 30) {
                        ForEach(UserStore().wants, id: \.self) { want in
                            
                            NavigationLink(destination: getView(view: want.title)) {
                                CardModel(title: want.title,image: want.imageName)
                            }
                        }
                    }
                    .padding(.top, 9)
                    .padding(.leading, 9)
                    .padding(.trailing, 9)
                }
                .navigationBarHidden(true)
//            }
        }.onAppear {
            speechservice.say("I want")
        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}
struct WantView_Previews: PreviewProvider {
    static var previews: some View {
        WantView()
            .environmentObject(UserStore())
    }
}
