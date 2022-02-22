//
//  HomeView.swift
//  Autism
//
//  Created by Mariano Piscitelli on 17/02/22.
//

import SwiftUI

struct HomeView: View {
    let speechService = SpeechService()
    var body: some View {
    NavigationView{
        VStack{
            
 
            Rectangle()
                .frame(width: 280, height: 30)
                .opacity(0)   // Rettangolo immaginario (megli di .padding)
            HStack{
            Image("menu")
                .resizable()
                .frame(width: 40, height: 40)
                .padding(.leading, 10)
                
            Spacer()
                
            Image(systemName: "gearshape")
                .imageScale(.large)
                .foregroundColor(Color(UIColor.darkGray))
                .padding(.trailing, 10)
                .font(.system(size:25))
            
            }
            
            .statusBar(hidden: true)
            
            Rectangle()
                .frame(width: 280, height: 30)
                .opacity(0)   // Rettangolo immaginario (megli di .padding)
            
            Image("fox")
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .shadow(radius: 10)
                .overlay(Circle().stroke(Color.red, lineWidth: 5))
                .frame(width: 30, height: 210)
            
            Rectangle()
                .frame(width: 280, height: 10)
                .opacity(0)   // Rettangolo immaginario (megli di .padding)
            
            Text("Welcome back,")
                .fontWeight(.thin)
                .multilineTextAlignment(.center)
            Text("Rodolfo!")
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            
//            Rectangle()
//                .frame(width: 280, height: 10)
//                .opacity(0)   // Rettangolo immaginario (megli di .padding)
            
            VStack{
//                
                Spacer()
                
                Button(action: {
                    speechService.say("i feel ")
                }, label: {
                    NavigationLink(destination: FeelView(),  label: {
                    Rectangle()
                        .cornerRadius(15)
                        .shadow(radius: 10)
                        .frame(width: 190, height: 170)
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
            Spacer()
            
                Button(action: {
                    speechService.say("i feel ")
                }, label: {
                    NavigationLink(destination: FeelView(),  label: {
                    Rectangle()
                        .cornerRadius(15)
                        .shadow(radius: 10)
                        .frame(width: 190, height: 170)
                        .foregroundColor(.white)
                        .overlay(
                            VStack{
                            Image("feel")
                                .resizable()
                                .scaledToFit()
                                .aspectRatio(0.85, contentMode: .fit)
                                .frame(width: 200, height: 140)
                                
                                Spacer()
                                
                                Text("I feel...")
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
                Spacer()
            }
        }
        .ignoresSafeArea()
        }
    .navigationBarHidden(true)
    }
    }
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
