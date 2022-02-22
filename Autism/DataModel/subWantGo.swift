//
//  subWantGo.swift
//  Autism
//
//  Created by Mariano Piscitelli on 21/02/22.
//

import Foundation

enum Go: Int, Level2 {
    case home
    case school
    case park
    case beach
    case mall
    case bathroom
    
    var imageName: String {
        switch self {
        case .home: return "image"
        case .school: return "image"
        case .park: return "image"
        case .beach: return "image"
        case .mall: return "image"
        case .bathroom: return "image"
        }
    }
}
