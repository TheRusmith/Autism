//
//  WantDrinkView.swift
//  Autism
//
//  Created by Emanuele Bosco on 28/02/22.
//
import SwiftUI
struct WantPeopleView: View {
    @EnvironmentObject  var userStore: UserStore
    var body: some View {
        
        VStack{
            NavigationView{
                ScrollView(showsIndicators: false){
                    VStack(alignment: . center, spacing: 30) {
                        ForEach(UserStore().wantpeople,id: \.self) { WantPeople in
                            NavigationLink(destination: HomeView()) {
                                CardModel(title: WantPeople.title,image: WantPeople.imageName)
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
struct WantPeopleView_Previews: PreviewProvider {
    static var previews: some View {
        WantPeopleView()
            .environmentObject(UserStore())
    }
}
