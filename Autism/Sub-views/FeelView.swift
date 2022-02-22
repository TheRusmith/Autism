//
//  FeelView.swift
//  Autism
//
//  Created by Mariano Piscitelli on 17/02/22.
//

import SwiftUI

struct FeelView: View {
    var body: some View {
        NavigationView{
            VStack{
                ZStack{
                    
                    
                    Rectangle()
                        .frame(width: 414, height: 180, alignment: .center)
                        .foregroundColor(Color.red)
                        .shadow(radius: 15)
                    HStack{
                        Rectangle()
                            .frame(width: 300, height: 132, alignment: .center)
                            .padding(.top, 48)
                            .opacity(0.4)
                            .overlay {
                                Text("qui devono apparire le cards")
                                    .font(.title)
                            }
                        Rectangle()
                                .frame(width: 2, height: 90, alignment: .center)
                                .padding(.top, 40)
                       Image("arrow")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80, alignment: .center)
                            .padding(.top, 40)
                        Spacer()
                    }
                }
                Spacer()
            }
            .ignoresSafeArea()
        }
        .navigationBarHidden(true)
    }
}
struct FeelView_Previews: PreviewProvider {
    static var previews: some View {
        FeelView()
    }
}
