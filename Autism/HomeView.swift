//
//  HomeView.swift
//  Autism
//
//  Created by Mariano Piscitelli on 17/02/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            ZStack{
                
        Rectangle()
                .ignoresSafeArea()
                .foregroundColor(.green)
                .frame(width: 414, height: 140)
                HStack{
                    Spacer()
                    
                    Rectangle()
                        .position(x: -20, y: 45)
                        .frame(width: 2, height: 90)
               
                    Button {
//                  Accade qualcosa
                    } label: {
                               Image("arrow")
                                   .resizable()
                                   .position(x: 20, y: 30)
                                   .brightness(0)
                                   .scaledToFit()
                                   .frame(width: 75)
                                   .shadow(radius: 4, y: 2)
                           }
                }
            }
            VStack{
                Image("want")
                    .frame(width: 150, height: 150, alignment: .center)
                    .padding(.top, 90)
                    .overlay(){
                        Text("I want...")
                            .font(.callout)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                            .padding(.top, 320)
                }
                
                Button(action: {
                    FeelView()
                        }, label: {
                            Image("want")
                                .frame(width: 150, height: 150, alignment: .center)
                                .padding(.top, 90)
                                .overlay(){
                                    Text("I feel...")
                                        .font(.callout)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.black)
                                        .padding(.top, 320)
                            }
                        })
                
                Spacer()
            }
                Spacer()
            }
        }
        
    }
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
