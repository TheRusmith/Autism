//
//  WantView.swift
//  Autism
//
//  Created by Francesco Viola on 25/02/22.
//

import SwiftUI
struct WantView: View {
    @EnvironmentObject  var userStore: UserStore
    var body : some View {
        Text ("0")
    }
}
struct WantView_Previews: PreviewProvider {
    static var previews: some View {
        WantView()
            .environmentObject(UserStore())
    }
}
