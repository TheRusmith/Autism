//
//  SettingsView.swift
//  Autism
//
//  Created by Mariano Piscitelli on 28/02/22.
//

import SwiftUI

struct SettingsView : View {
    @State var username: String = ""
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
    var body: some View {
        
        VStack{
            
            Image("fox")
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .shadow(radius: 10)
                .overlay(Circle().stroke(Color.red, lineWidth: 5))
                .frame(width: 30, height: 210)
                .overlay{
                    Rectangle()
                        .scaledToFill()
                        .clipShape(Circle())
                        .shadow(radius: 10)
                        .overlay(Circle().stroke(Color.red, lineWidth: 5))
                        .frame(width: 30, height: 210)
                        .opacity(0.3)
                        .overlay{
                            Button {
                                
                            } label: {
                                Image(systemName: "pencil")
                                    .imageScale(.large)
                                    .foregroundColor(.white)
                                    .font(.system(size:60))
                        }
                    }
                }
        
        TextField("Nickname", text: $username)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
            
            
            
            Spacer()
        }
    }
}
    

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

