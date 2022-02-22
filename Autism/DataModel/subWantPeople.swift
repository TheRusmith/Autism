//
//  subWantPeople.swift
//  Autism
//
//  Created by Mariano Piscitelli on 21/02/22.
//

enum People: Int, Level2 {
    case mom
    case dad
    
    var imageName: String {
        switch self {
        case .mom: return "image"
        case .dad: return "image"
        }
    }
}
