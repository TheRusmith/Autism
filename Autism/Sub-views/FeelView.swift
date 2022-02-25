//
//  FeelView.swift
//  Autism
//
//  Created by Mariano Piscitelli on 17/02/22.
//
import SwiftUI

struct FeelView: View {
    @EnvironmentObject  var userStore: UserStore
    let speechservice = SpeechService()

    var body: some View {
        

//        NavigationView{
            VStack{
                
               HStack{

                    Rectangle()
                        .frame(width: 300, height: 10, alignment: .top)
                        .background(Color.red)
                        .padding(.top, 48)
                        .ignoresSafeArea()
                        .overlay {
                            Text("I feel ")
                                .font(.title)
                        }

                   Image("arrow")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80, alignment: .top)
                        .padding(.top, 40)
                    Spacer()
                }
                 
                HStack{

                    NavigationView {
                        ScrollView(.vertical) {
                            LazyVStack(alignment: .leading, spacing: 30) {
//                                ForEach(UserStore().wants,id: \.self) { want in
//
//                                    CardModel(title: want.title,image: want.imageName)
//                                    // TO DO NAVIGATION LINK TO THE APPROPRIATE INTERFACE
//
                                    
                                    }
                           
                
                                 
                                    ForEach(UserStore().wants,id: \.self) { want in
//                                        NavigationLink(destination : destination: destination() ,selection: $selection)
                                        NavigationLink(destination: HomeView()) {
                                               CardModel(title: want.title,image: want.imageName)
                                               
                                 }
                                               
                                    
                                 
                                 
                                 
                                }
                            }
                            .padding(.top, 10)
                            .padding(.bottom, 20)
                        }
                        
                    }
                    
                }
                 Spacer()
         .onAppear {
            speechservice.say("Mi sento ")
        }
            .ignoresSafeArea()
        }
        
    

}
struct FeelView_Previews: PreviewProvider {
    static var previews: some View {
        FeelView()
            .environmentObject(UserStore())
    }
}


