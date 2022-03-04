//
//  FinalView.swift
//  Autism
//
//  Created by Francesco Viola on 02/03/22.
//

import SwiftUI

struct FinalView: View {
    @State var messagesFinal = [String]()
    var body: some View {
        let speechservice = SpeechService()
        VStack{
            HStack {
                BarView(messages: messagesFinal)
                    .onAppear{
                        speechservice.say(messagesFinal.last!)
                    }
    //            Text("ViewFinale")
            }
            HStack {
                
                Text("This is your final message")
                
            }
        }

        
    }
}

struct FinalView_Previews: PreviewProvider {
    static var previews: some View {
        FinalView()
    }
}
