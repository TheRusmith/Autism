//
//  FeelView.swift
//  Autism
//
//  Created by Mariano Piscitelli on 17/02/22.
//
import SwiftUI

struct FeelView: View {
    @EnvironmentObject  var userStore: UserStore
    let speechservice = SpeechService()

    var body: some View {
        

//        NavigationView{
            VStack{
                
                BarView()
                 
                HStack{

                    NavigationView {
                        ScrollView(.vertical) {
                            VStack(alignment: .leading, spacing: 20) {
                                ForEach(UserStore().wants,id: \.self) { want in

                                    NavigationLink(destination: HomeView()) {
                                           CardModel(title: want.title,image: want.imageName)
                                           
                             }
                            }
                                }
                            }
                            .padding(.top, 10)
                            .padding(.bottom, 20)
                    }
                    }
                }
                 Spacer()
         .onAppear {
            speechservice.say("Mi sento ")
        }
            .ignoresSafeArea()
        }
}
struct FeelView_Previews: PreviewProvider {
    static var previews: some View {
        FeelView()
            .environmentObject(UserStore())
    }
}


