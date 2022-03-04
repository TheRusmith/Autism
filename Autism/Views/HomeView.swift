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
            
            VStack(spacing:50){
                
                Rectangle()
                    .frame(width: 100, height: 1)
                    .opacity(0)
                
                Button(action: {
                    speechService.say("i feel ")
                }, label: {
                    NavigationLink(destination: FeelView(),  label: {
                        ZStack{
                            
                            Rectangle()
                                .frame(width: 320, height: 90, alignment: .center)
                                .cornerRadius(20)
                                .foregroundColor(.white)
                                .shadow(radius: 5)
                                .overlay {
                                    Text("I feel...")
                                        .font(.largeTitle)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.red)
                                        .padding(.leading, 120)
                                }
                            
                            Image("feel")
                                .resizable()
                                .scaledToFill()
                                .background(.white)
                                .cornerRadius(20)
                                .padding(5)
                                .frame(width: 90, height: 90, alignment: .center)
                                .padding(.trailing, 230)
                        }
                })
        })

                Button(action: {
                    speechService.say("i want ")
                }, label: {
                    NavigationLink(destination: WantView(),  label: {
                        ZStack{
                            
                            Rectangle()
                                .frame(width: 320, height: 90, alignment: .center)
                                .cornerRadius(20)
                                .foregroundColor(.white)
                                .shadow(radius: 5)
                                .overlay {
                                    Text("I want...")
                                        .font(.largeTitle)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.red)
                                        .padding(.leading, 120)
                                }
                            
                            Image("want")
                                .resizable()
                                .scaledToFill()
                                .background(.white)
                                .cornerRadius(20)
                                .padding(5)
                                .frame(width: 90, height: 90, alignment: .center)
                                .padding(.trailing, 230)
                        }
                })
            })
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
