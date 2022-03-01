//
//  HomeView.swift
//  Autism
//
//  Created by Mariano Piscitelli on 17/02/22.
//

import SwiftUI

struct HomeView: View {
    @State private var showSettingsView = false
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
                
                Button {
                    showSettingsView.toggle()
                } label: {
                    Image(systemName: "gearshape")
                        .imageScale(.large)
                        .foregroundColor(Color(UIColor.darkGray))
                        .font(.system(size:25))
                        .padding(.trailing,5)
                }
                .sheet(isPresented: $showSettingsView) {
                    SettingsView()
                }
                
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
                Spacer()
                
                ZStack{
                    
                    Rectangle()
                        .frame(width: 320, height: 90, alignment: .center)
                        .cornerRadius(20)
                        .foregroundColor(.red)
                        .shadow(radius: 5)
                        .overlay {
                            Text("I feel...")
                                .font(.largeTitle)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .padding(.leading, 120)
                        }
                    
                    Image("feel")
                        .resizable()
                        .scaledToFill()
                        .background(.white)
                        .cornerRadius(20)
                        .frame(width: 90, height: 90, alignment: .center)
                        .padding(.trailing, 230)
                }
                
                Spacer()
                
                ZStack{
                    
                    Rectangle()
                        .frame(width: 320, height: 90, alignment: .center)
                        .cornerRadius(20)
                        .foregroundColor(.red)
                        .shadow(radius: 5)
                        .overlay {
                            Text("I want...")
                                .font(.largeTitle)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .padding(.leading, 120)
                        }
                    
                    Image("want")
                        .resizable()
                        .scaledToFill()
                        .background(.white)
                        .cornerRadius(20)
                        .frame(width: 90, height: 90, alignment: .center)
                        .padding(.trailing, 230)
                }
                
                
                
                
                
//                Button(action: {
//                    speechService.say("i feel ")
//                }, label: {
//                    NavigationLink(destination: WantView(),  label: {
//                    Rectangle()
//                        .cornerRadius(15)
//                        .shadow(radius: 10)
//                        .frame(width: 190, height: 170)
//                        .foregroundColor(.white)
//                        .overlay(
//                            VStack{
//                            Image("want")
//                                .resizable()
//                                .scaledToFit()
//                                .aspectRatio(0.85, contentMode: .fit)
//                                .frame(width: 200, height: 140)
//
//                                Spacer()
//
//                                Text("I want...")
//                                    .foregroundColor(.black)
//                                    .fontWeight(.semibold)
//                                    .multilineTextAlignment(.center)
//
//                                Spacer()
//                            })
//                })
//            })
//                Spacer()
//
//                Button(action: {
//                    speechService.say("i feel ")
//                }, label: {
//                    NavigationLink(destination: FeelView(),  label: {
//                        Rectangle()
//                            .cornerRadius(15)
//                            .shadow(radius: 10)
//                            .frame(width: 190, height: 170)
//                            .foregroundColor(.white)
//                            .overlay(
//                                VStack{
//                                    Image("feel")
//                                        .resizable()
//                                        .scaledToFit()
//                                        .aspectRatio(0.85, contentMode: .fit)
//                                        .frame(width: 200, height: 140)
//
//                                    Spacer()
//
//                                    Text("I feel...")
//                                        .foregroundColor(.black)
//                                        .fontWeight(.semibold)
//                                        .multilineTextAlignment(.center)
//                                    Spacer()
//                                })
//                    })
//                })
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
