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
        HStack {
            Text("so bell")
            
            Button("Done", action: {
                speechService.say("hello man")
            })
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
