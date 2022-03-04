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
            ScrollView(.vertical) {
                NavigationLink(destination: FinalView()) {
                    Text("Do Something")
                }
            }
            .frame(width: .infinity, height: .infinity)
            
            .foregroundColor(.red)
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Favorites")
        }
    }
}

struct FavView_Previews: PreviewProvider {
    static var previews: some View {
        FavView()
    }
}
