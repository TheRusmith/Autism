//
//  Activity.swift
//  Autism
//
//  Created by Mariano Piscitelli on 21/02/22.
//

import Foundation

enum subWant: Int, Level1 {
    case eat
    case drink
    case play
    case go
    case watchTv
    case Sleep
    case people
    
    var imageName: String {
        switch self {
        case .eat: return "image"
        case .drink: return "image"
        case .play: return "image"
        case .go: return "image"
        case .watchTv: return "image"
        case .Sleep: return "image"
        case .people: return "image"
        }
    }
}
