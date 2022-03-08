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
        case "Back":
            HomeView()
        default:
            WantDrinkView()
        }
    }
    
    @EnvironmentObject  var userStore: UserStore
    var body: some View {
        
        VStack{
            HStack {
                BarView(messages: ["want"])
//                    .padding(.top, 21)
            }
             
//            NavigationView{
                ScrollView(showsIndicators: false){
                    VStack(alignment: . center, spacing: 30) {
                        
                        Rectangle()
                            .frame(width: UIScreen.main.bounds.width*0.771, height: UIScreen.main.bounds.height*0.00001)
                            .opacity(0)
                        
                        ForEach(UserStore().wants, id: \.self) { want in
                            
                            NavigationLink(destination: getView(view: want.title)) {
                                CardModel(title: want.title,image: want.imageName)
                            }
                        }
                    }
//                    .padding(.top, 9)
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
