//
//  FinalView.swift
//  Autism
//
//  Created by Francesco Viola on 02/03/22.
//

import SwiftUI

struct FinalView: View {
    let speechservice = SpeechService()
    func repeatFinal (messages: [String]){
        messages.forEach { message in
            speechservice.say(message)
        }
    }
//    @State var showHomeView: Bool = false
    @State var messagesFinal = [String]()
    var body: some View {
            
            VStack{
                HStack{
                    BarView(messages: messagesFinal)
                        .onAppear{
                            speechservice.say(messagesFinal.last!)
                        }
                }
                VStack(spacing: 30) {
                    
                    HStack{
                        
                        Button {
                            repeatFinal(messages: messagesFinal)
                        } label: {
                            Rectangle()
                                .frame(width: UIScreen.main.bounds.width*0.771, height: UIScreen.main.bounds.height*0.100, alignment: .center)
                                .cornerRadius(20)
                                .foregroundColor(.random())
                                .shadow(radius: 5)
                                .overlay {
                                    Text("Read Again")
                                        .font(.largeTitle)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                        .padding(.leading, 120)
                                    Rectangle()
                                        .foregroundColor(.white)
                                        .frame(width: UIScreen.main.bounds.width*0.220, height: UIScreen.main.bounds.height*0.1)
                                        .cornerRadius(20)
                                        .padding(.trailing, 230)
                                    Image(systemName: "speaker.wave.3.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .foregroundColor(.black)
                                        .frame(width: 60, height: 60, alignment: .center)
                                        .cornerRadius(20)
                                        .padding(.trailing, 230)
                                }
                        }
                    }
                    
                    HStack{
                        
                        Button {
                            
                        } label: {
                            Rectangle()
                                .frame(width: UIScreen.main.bounds.width*0.771, height: UIScreen.main.bounds.height*0.100, alignment: .center)
                                .cornerRadius(20)
                                .foregroundColor(.random())
                                .shadow(radius: 5)
                                .overlay {
                                    Text("Share")
                                        .font(.largeTitle)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                        .padding(.leading, 120)
                                    Rectangle()
                                        .foregroundColor(.white)
                                        .frame(width: UIScreen.main.bounds.width*0.220, height: UIScreen.main.bounds.height*0.1)
                                        .cornerRadius(20)
                                        .padding(.trailing, 230)
                                    Image(systemName: "square.and.arrow.up")
                                        .resizable()
                                        .scaledToFit()
                                        .foregroundColor(.black)
                                        .frame(width: 60, height: 60, alignment: .center)
                                        .cornerRadius(20)
                                        .padding(.trailing, 230)
                                }
                        }
                    }
                    
                    HStack{
                        
                        NavigationLink(
                            destination: HomeView()){Rectangle()
                                    .frame(width: UIScreen.main.bounds.width*0.771, height: UIScreen.main.bounds.height*0.100, alignment: .center)
                                    .cornerRadius(20)
                                    .foregroundColor(.random())
                                    .shadow(radius: 5)
                                    .overlay {
                                        Text("Back Home")
                                            .font(.largeTitle)
                                            .fontWeight(.semibold)
                                            .foregroundColor(.white)
                                            .padding(.leading, 120)
                                        Rectangle()
                                            .foregroundColor(.white)
                                            .frame(width: UIScreen.main.bounds.width*0.220, height: UIScreen.main.bounds.height*0.1)
                                            .cornerRadius(20)
                                            .padding(.trailing, 230)
                                        Image(systemName: "house.fill")
                                            .resizable()
                                            .scaledToFit()
                                            .foregroundColor(.black)
                                            .frame(width: 60, height: 60, alignment: .center)
                                            .cornerRadius(20)
                                            .padding(.trailing, 230)
                                    }
                            }
                    }
                }
                Spacer()
            }
            Spacer()
        
        .navigationBarHidden(true)
    }

}

struct FinalView_Previews: PreviewProvider {
    static var previews: some View {
        FinalView(messagesFinal: ["sad","happy"])
    }
}
