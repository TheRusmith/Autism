//
//  FeelView.swift
//  Autism
//
//  Created by Mariano Piscitelli on 17/02/22.
//

import SwiftUI

struct FeelView: View {
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
            
            HStack{
                
                Spacer()
            
            Image("happy")
                    .frame(width: 150, height: 150)
                    .overlay(){
                        Text("Happy")
                            .font(.callout)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                            .padding(.top, 180)
                        
                            
                }
                
                Spacer()
                
                Image("tired")
                    .frame(width: 150, height: 150)
                    .overlay(){
                        Text("Tired")
                            .font(.callout)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                            .padding(.top, 180)
                        
                            
                }
                
    
                Spacer()
            }
            .padding(.top, 30)
            
            HStack{
                
                Spacer()
            
            Image("angry")
                    .frame(width: 150, height: 150)
                    .overlay(){
                        Text("Angry")
                            .font(.callout)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                            .padding(.top, 180)
                        
                            
                }
                
                Spacer()
                
                Image("sick")
                    .frame(width: 150, height: 150)
                    .overlay(){
                        Text("Sick")
                            .font(.callout)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                            .padding(.top, 180)
                        
                            
                }
                
    
                Spacer()
            }
            .padding(.top, 30)
            
            HStack{
                
                Spacer()
            
            Image("sad")
                    .frame(width: 150, height: 150)
                    .overlay(){
                        Text("Sad")
                            .font(.callout)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                            .padding(.top, 180)
                        
                            
                }
                
                Spacer()
                
                Image("")
                    .frame(width: 150, height: 150)
                    .overlay(){
                        Text("")
                            .font(.callout)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                            .padding(.top, 180)
                }
                
    
                Spacer()
            }
            .padding(.top, 30)
            
            Spacer()
            
         
        }
        
    }
}

struct FeelView_Previews: PreviewProvider {
    static var previews: some View {
        FeelView()
    }
}
