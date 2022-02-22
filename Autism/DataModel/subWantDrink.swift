//
//  subWantDrink.swift
//  Autism
//
//  Created by Mariano Piscitelli on 21/02/22.
//

import Foundation

enum Drink: Int, Level2 {
    case water
    case cola
    case sprite
    case orangeJuice
    case hotTea
    case coldTea
    case camomilla
    case chinotto
    
    var imageName: String {
        switch self {
        case .water: return "image"
        case .cola: return "image"
        case .sprite: return "image"
        case .orangeJuice: return "image"
        case .hotTea: return "image"
        case .coldTea: return "image"
        case .camomilla: return "image"
        case .chinotto: return "image"
        }
    }
}
