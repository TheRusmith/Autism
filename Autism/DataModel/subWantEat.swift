//
//  subWantEat.swift
//  Autism
//
//  Created by Mariano Piscitelli on 21/02/22.
//

import Foundation

enum Eat: Int, Level2 {
    case burger
    case pasta
    case candy
    case meat
    case frenchFries
    case yogurt
    case cutlet
    case fruit
    case sweet
    case cookies
    case bread
    case pizza
    case pancakes
    
    var imageName: String {
        switch self {
        case .burger: return "image"
        case .pasta: return "image"
        case .candy: return "image"
        case .meat: return "image"
        case .frenchFries: return "image"
        case .yogurt: return "image"
        case .cutlet: return "image"
        case .fruit: return "image"
        case .sweet: return "image"
        case .cookies: return "image"
        case .bread: return "image"
        case .pizza: return "image"
        case .pancakes: return "image"
        }
    }
}
