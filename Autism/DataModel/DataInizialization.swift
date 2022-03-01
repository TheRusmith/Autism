//
//  DataInizialization.swift
//  Autism
//
//  Created by Francesco Viola on 22/02/22.
//

import Foundation
import SwiftUI
struct Feel: Level1,Hashable {
    let title: String
    let imageName: String
}
struct Want: Level1,Hashable {
    let title: String
    let imageName: String
}
struct WantPlay : Level2,Hashable {
    let title: String
    let imageName: String
}
struct WantEat : Level2,Hashable {
    let title: String
    let imageName: String
}
struct WantDrink: Level2,Hashable {
    let title: String
    let imageName: String
}
struct WantGo : Level2,Hashable {
    let title: String
    let imageName: String
}
struct WantPeople : Level2,Hashable {
    let title : String
    let imageName: String
}
var hr = Want(title: "fff",imageName: "errr")
//UserStore().wants.append(Want(title: "", imageName: ""))

//TO DO INITIALIZE THE STRUCT
//UserStore().wants.append(Want(title: "", imageName: ""))

struct Needs: Hashable {
    var title: String
    var imageName: String
}
