//
//  CreateView.swift
//  Autism
//
//  Created by Mariano Piscitelli on 17/02/22.
//

import SwiftUI

struct CreateView: View {
    var body: some View {
        NavigationView{
            ScrollView(.vertical){

            VStack(spacing:50){
                
                Rectangle()
                    .frame(width: 100, height: 1)
                    .opacity(0)
                
                Button(action: {
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
                                .opacity(0.5)
                                .frame(width: 90, height: 90, alignment: .center)
                                .padding(.trailing, 230)
                                .overlay{
                                    Button {
//  CLICCANDO QUI DOVREBBE AVERE LA POSSIBILITA DI CAMBIARE L'IMMAGINE SCATTANDONE UNA O SCEGLIENDONE UNA DALLA LIBRERIA
                                    } label: {
                                        Image(systemName: "pencil")
                                            .imageScale(.large)
                                            .foregroundColor(.white)
                                            .font(.system(size:50))
                                            .shadow(radius: 5, y: 10)
                                            .padding(.trailing, 230)
                                }
                            }
                        }
                })
            })

                Button(action: {
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
                                .mask(Color.black.opacity(0.5))
                                .frame(width: 90, height: 90, alignment: .center)
                                .padding(.trailing, 230)
                                .overlay{
                                    Button {
                                        
                                    } label: {
                                        Image(systemName: "pencil")
                                            .imageScale(.large)
                                            .foregroundColor(.white)
                                            .font(.system(size:50))
                                            .shadow(radius: 5, y: 10)
                                            .padding(.trailing, 230)
                                }
                            }
                        }
                })
            })
                
                Button(action: {
                }, label: {
                    NavigationLink(destination: CreateView(),  label: {
                        ZStack{
                            
                            Rectangle()
                                .frame(width: 320, height: 90, alignment: .center)
                                .cornerRadius(20)
                                .foregroundColor(.red)
                                .shadow(radius: 5)
                                .overlay {
                                    Text("Add")
                                        .font(.largeTitle)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                        .padding(.leading, 120)
                                }
                            
                            Image(systemName: "plus")
                                .resizable()
                                .scaledToFill()
                                .font(.system(.title, design: .rounded).bold())
                                .scaleEffect(0.8)
                                .cornerRadius(20)
                                .foregroundColor(.white)
                                .shadow(radius: 5, y: 10)
                                .frame(width: 90, height: 90, alignment: .center)
                                .padding(.trailing, 230)
                        }
                })
            })
                Spacer()
            }
            .frame(maxWidth: .infinity)
        }
            .foregroundColor(.red)
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Create")
            
        }
    }
}

struct CreateView_Previews: PreviewProvider {
    static var previews: some View {
        CreateView()
    }
}
