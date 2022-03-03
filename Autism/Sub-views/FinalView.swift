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
        HStack {
            BarView(messages: messagesFinal)
//            Text("ViewFinale")
        }
        
    }
}

struct FinalView_Previews: PreviewProvider {
    static var previews: some View {
        FinalView()
    }
}
