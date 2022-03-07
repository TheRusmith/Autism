//
//  BarView.swift.swift
//  Autism
//
//  Created by Mariano Piscitelli on 25/02/22.
//

import SwiftUI

struct BarView: View {
    
    @State var messages = [String]()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    //    let title : String
    //    let image : String
    // @EnvironmentObject  var userStore: UserStore
    var body: some View {
        
        ZStack{
            
            Rectangle()
                .frame(width: UIScreen.main.bounds.width, height: 180, alignment: .center)
                .foregroundColor(Color.red)
                .shadow(radius: 15)
            
            HStack{
                
                Spacer()
                
                HStack{
                    ZStack{
                        Rectangle()
                            .frame(width: UIScreen.main.bounds.width*0.7, height: 10)
                            .cornerRadius(15)
                        
                        HStack(spacing: 30){
                            ForEach(messages,id: \.self) { message in
                                SmallcardImage(title: message, image: message.lowercased())
                            }
                            Spacer()
                                
                        }
                        .padding(.leading, 14)
                    }
                    
                }
                .frame(width: UIScreen.main.bounds.width*0.750, height: 138)
                
                Spacer()
                
                HStack{
                    Rectangle()
                        .frame(width: 1, height: 90)
                }
                .frame(width: UIScreen.main.bounds.width*0.02, height: 138)
                
                Spacer()
                
                HStack{
                    Image("arrow")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.white)
                        .frame(width: 60, height: 60)
                        .cornerRadius(10)
                        .onTapGesture {
                            self.presentationMode.wrappedValue.dismiss()
                        }
                }
                .frame(width: UIScreen.main.bounds.width*0.18, height: 138)
                
                Spacer()
                
            }
            .padding(.top, 42)
        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}




@ViewBuilder func updateBarView(view: String) -> some View {
    switch view {
    case "Feel":
        BarView(messages: ["feel"])
    case "WantView":
        BarView(messages: ["want"])
    case "WantEat":
        BarView(messages: ["want","burger"])
    case "WantDrink":
        BarView(messages: ["want","climbing"])
    case "WantPlay":
        BarView(messages: ["want","play"])
    case "WantGo":
        BarView(messages: ["want","park"])
    case "WantPeople":
        BarView(messages: ["want","dad"])
    default:
        BarView(messages: ["want"])
    }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView(messages: ["coca","cotton candy","chocolate"])
         
    }
}

