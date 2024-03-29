//
//  FeelView.swift
//  Autism
//
//  Created by Mariano Piscitelli on 17/02/22.

import SwiftUI
struct FeelView: View {
    @EnvironmentObject  var userStore: UserStore
    let speechservice = SpeechService()
    func speechTalk (title : String) {
        switch title {
            case "happy":
                speechservice.say("happy")
            case "tired":
            speechservice.say("tired")
            case "angry":
            speechservice.say("angry")
            case "sad":
            speechservice.say("sad")
            default:
                speechservice.say("default")
        }
    }
//    private var imagename: String {
//      String(
//        localized: "points-count \(feels.title)",
//        comment: "The pluralized score."
//      )
//    }
    private var imagename2: String {
      // 1
      let localizedString
      = NSLocalizedString(" %lld", comment: "Changed Language")
      // 2
      return String(format: localizedString, UserStore().feels)
    }
//    private var imagename: String {
//      String(
//        localized: "\(UserStore().feels)",
//        comment: "The pluralized score."
//      )
//    }
    var body: some View {
        
        VStack{
            HStack {
                BarView(messages: ["feel"])
//                    .padding(.top, 21)
            }
            
                ScrollView(showsIndicators: false){
                    VStack(alignment: .center, spacing: 30) {
                        
                        Rectangle()
                            .frame(width: UIScreen.main.bounds.width*0.771, height: UIScreen.main.bounds.height*0.00001)
                            .opacity(0)
                        
                        ForEach(UserStore().feels,id: \.self) {  feel in
                            NavigationLink(destination: getFeeling(view: feel.imageName)) {
                                CardModelFav(title: feel.title,image: feel.imageName)
                                
                            }
                            .onTapGesture {
                                speechTalk(title: feel.imageName)
                            }
                        }
                    }
//                    .padding(.top, 9)
                    .padding(.leading, 9)
                    .padding(.trailing, 9)
                }
                .navigationBarHidden(true)
        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
        .onAppear {
            speechservice.say("I feel ")
              appendStep(step: "iwant")
            
        }
    }
    
    
    @ViewBuilder func getFeeling(view: String) -> some View {
        switch view {
        case "happy":
            
            FinalView(messagesFinal: ["feel","happy"])
            
        case "sad":
            FinalView(messagesFinal: ["feel","sad"])
        case "sick":
            FinalView(messagesFinal: ["feel","sick"])
        case "angry":
            FinalView(messagesFinal: ["feel","angry"])
        case "tired":
            FinalView(messagesFinal: ["feel","tired"])
        case "arrow":
            HomeView()
        default:
            FinalView(messagesFinal: ["feel","tired"])
        }
    }

}
struct FeelView_Previews: PreviewProvider {
    static var previews: some View {
        FeelView()
            .environmentObject(UserStore())
    }
}
