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



//extension color in a range of color
extension Color {
    static func random() -> Color {
        return Color(red: Double.random(in: 0...1), green: Double.random(in: 0...1), blue: Double.random(in: 0...1))
    }
}
