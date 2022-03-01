//
//  ViewModel.swift
//  Autism
//
//  Created by Francesco Viola on 01/03/22.
//

import SwiftUI
struct ViewModel: View {
    @EnvironmentObject  var userStore: UserStore

    var body: some View {
        
        VStack{

            
            BarView()
                .padding(.top, 21)
            
            NavigationView{
                ScrollView(showsIndicators: false){
                    VStack(alignment: .center , spacing: 30) {
                        //how to solve without putting in an array? Switch case??
                        ForEach(UserStore().wants,id: \.self) { want in
                            NavigationLink(destination: HomeView()) {
                                CardModel(title: want.title,image: want.imageName)
                            }
                        }
                    }
                    .padding(.top, 9)
                    .padding(.leading, 9)
                    .padding(.trailing, 9)
                }
                .navigationBarHidden(true)
            }
        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}
