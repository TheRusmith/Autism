//
//  Game.swift
//  Autism
//
//  Created by Mariano Piscitelli on 21/02/22.
//

import Foundation

enum Play: Int, Level2 {
    case computer
    case ball
    case puzzle
    case playstation
    case outside
    
    var imageName: String {
        switch self {
        case .computer: return "image"
        case .ball: return "image"
        case .puzzle: return "image"
        case .playstation: return "image"
        case .outside: return "image"
        }
    }
}
