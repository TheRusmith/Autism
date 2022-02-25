//
//  TestButtonView.swift
//  Autism
//
//  Created by Mariano Piscitelli on 17/02/22.
//

import SwiftUI

struct TestButtonView: View {
    let speechService = SpeechService()
    var body: some View {
        NavigationView {
                VStack{
                
                                    Button(action: {
                                        speechService.say("i feel ")
                                    }, label: {
                                        NavigationLink(destination: FeelView(),  label: {
                                        Rectangle()
                                            .cornerRadius(15)
                                            .shadow(radius: 15)
                                            .frame(width: 200, height: 180)
                                            .foregroundColor(.white)
                                            .overlay(
                                                VStack{
                                                Image("want")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .aspectRatio(0.85, contentMode: .fit)
                                                    .frame(width: 200, height: 140)
                                                    
                                                    Spacer()
                                                    
                                                    Text("I want...")
                                                        .foregroundColor(.black)
                                                        .fontWeight(.semibold)
                                                        .multilineTextAlignment(.center)
                                                    
                                                    Spacer()
                                                }
                                            )
                                    }
                                    )
                                }
                                )
                }
        }
    }
}
struct TestButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TestButtonView()
    }
}
