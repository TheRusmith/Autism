//
//  SettingsView.swift
//  Autism
//
//  Created by Mariano Piscitelli on 28/02/22.
//

import SwiftUI

struct SettingsView : View {
    @State private var preselectedIndex = 0
    @State private var voices = ["Male", "Female"]
    @State var username: String = ""
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
    @State var languages = ["English", "Italian"]
//    @State private var selectedVoice = ""
//    @State private var selectedLanguage = ""
    @AppStorage("name") private var name = "Nickname"
    @AppStorage("selectedLanguage") private var language = "English"
    @AppStorage("selectedVoice") private var voice = "Male"
    let defaults = UserDefaults.standard
//    defaults.set(22, forKey: "userAge")
    var darkModeEnabled = true
    
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
            
        Rectangle()
                .frame(width: 20, height: 30)
                .opacity(0)
            
        TextField("Insert your name ", text: $name)
                .frame(width: 300, height: 20)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(15)
            .multilineTextAlignment(.center)
            .padding(.bottom, 20)
            
            Rectangle()
                    .frame(width: 20, height: 30)
                    .opacity(0)
            
            Text("Voice")
                .fontWeight(.bold)
                   .font(.title)
                   .foregroundColor(.red)
            
            Picker(selection: $voice,label : Text("\(voice)")) {
                ForEach(voices,id: \.self) {
                        Text($0)
                            }
                        }
                        .pickerStyle(SegmentedPickerStyle())
            
            Rectangle()
                    .frame(width: 20, height: 30)
                    .opacity(0)
            
            Text("Language")
                .fontWeight(.bold)
                   .font(.title)
                   .foregroundColor(.red)
            
            Picker(selection: $language, label: Text("\(language)")) {
                ForEach(languages,id: \.self) {
                    Text($0)
                }
                     }
            .pickerStyle(SegmentedPickerStyle())
//            Spacer()
        }
    }
}
    

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

