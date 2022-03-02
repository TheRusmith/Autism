//
//  FeelView.swift
//  Autism
//
//  Created by Mariano Piscitelli on 17/02/22.

import SwiftUI
struct FeelView: View {
    @EnvironmentObject  var userStore: UserStore
    
    let speechService = SpeechService()
    var body: some View {
        
        VStack{
            HStack {
                updateBarView(view: "Feel")
                    .padding(.top, 21)
            }
            
          //  updateBarView(view: "Feel")
              //  .padding(.top, 21)
 
                ScrollView(showsIndicators: false){
                    VStack(alignment: . center, spacing: 30) {
                        
                        ForEach(UserStore().feels,id: \.self) { feel in
                            NavigationLink(destination: FinalView()) {
                                CardModel(title: feel.title,image: feel.imageName)
                                
                            }
                        }
                    }
                    .padding(.top, 9)
                    .padding(.leading, 9)
                    .padding(.trailing, 9)
                }
                .navigationBarHidden(true)

        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
        .onAppear {
            speechService.say("I feel ")
              appendStep(step: "iwant")
            
        }
    }
}
struct FeelView_Previews: PreviewProvider {
    static var previews: some View {
        FeelView()
            .environmentObject(UserStore())
    }
}
