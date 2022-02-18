//
//  SmallcardImage.swift
//  Autism
//
//  Created by Mariano Piscitelli on 18/02/22.
//

import SwiftUI

struct SmallcardImage: View {
    var body: some View {
        Image("fox")
            .resizable()
            .frame(width: 60, height: 60)
            .border(<#T##content: ShapeStyle##ShapeStyle#>)
    }
}

struct SmallcardImage_Previews: PreviewProvider {
    static var previews: some View {
        SmallcardImage()
    }
}
