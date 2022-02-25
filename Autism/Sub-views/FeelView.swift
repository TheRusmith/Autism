//
//  FeelView.swift
//  Autism
//
//  Created by Mariano Piscitelli on 17/02/22.

//import SwiftUI
//
//struct FeelView: View {
//    @EnvironmentObject  var userStore: UserStore
//    let speechservice = SpeechService()
//
//    var body: some View {
//        VStack{
//            BarView()
//            HStack{
//                NavigationView {
//                    ScrollView(.vertical) {
//                        VStack(alignment: .center, spacing: 25) {
//                            ForEach(UserStore().wants,id: \.self) { want in
//                                NavigationLink(destination: HomeView()) {
//                                    CardModel(title: want.title,image: want.imageName)
//                                }
//                            }
//                        }
//                    }
//                    .navigationBarHidden(true)
//                }
//            }
//        }
//            .onAppear {
//                speechservice.say("Mi sento ")
//            }
//            .ignoresSafeArea()
//            .navigationBarHidden(true)
//    }
//}
//struct FeelView_Previews: PreviewProvider {
//    static var previews: some View {
//        FeelView()
//            .environmentObject(UserStore())
//    }
//}

import SwiftUI
struct FeelView: View {
    @EnvironmentObject  var userStore: UserStore
    var body: some View {

        VStack{
            BarView()
            NavigationView{
                ScrollView(.vertical){
                    LazyVStack(alignment: . center, spacing: 30) {
                        
                        ForEach(UserStore().wants,id: \.self) { want in
                            NavigationLink(destination: HomeView()) {
                                CardModel(title: want.title,image: want.imageName)
                            }
                        }
                        }
                    }
                    .navigationBarHidden(true)
                }
            }
            .ignoresSafeArea()

            .navigationBarHidden(true)
    }
}
struct FeelView_Previews: PreviewProvider {
    static var previews: some View {
        FeelView()
            .environmentObject(UserStore())
    }
}
