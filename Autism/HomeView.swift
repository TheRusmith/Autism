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
            
            Rectangle()
                .frame(width: 280, height: 60)
                .opacity(0)   // Rettangolo immaginario (megli di .padding)
            
            Image("fox")
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .shadow(radius: 10)
                .overlay(Circle().stroke(Color.red, lineWidth: 5))
                .frame(width: 30, height: 190)
            
            Rectangle()
                .frame(width: 280, height: 10)
                .opacity(0)   // Rettangolo immaginario (megli di .padding)
            
            Text("Welcome back,")
                .fontWeight(.thin)
                .multilineTextAlignment(.center)
            Text("Rodolfo!")
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            
                Spacer()
            }
        }
        
    }
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
