//
//  FavView.swift
//  Autism
//
//  Created by Mariano Piscitelli on 17/02/22.
//

import SwiftUI
import AVFoundation
struct FavView: View {
    let speechService = SpeechService()

    
    
    
    var body: some View {
        NavigationView {
                   VStack {
                       NavigationLink(destination: FeelView()) {
                           Text("Do Something")
                       }
                   }
               }


   /*     override func viewDidAppear( _ animated : Bool) {
            super.viewDidApperar(animated)
            speechService.say("hello man")
        } */
        /*
        HStack {
            Text("Hello, World!")
        }

        
        */
    }
}

struct FavView_Previews: PreviewProvider {
    static var previews: some View {
        FavView()
    }
}
