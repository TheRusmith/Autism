//
//  Emotion.swift
//  Autism
//
//  Created by Mariano Piscitelli on 21/02/22.
//

import Foundation

enum Emotion: String, Level1 {
	case angry = "Angry"
    case happy = "Happy"
    case sad = "Sad"
    case tired = "Tired"
    case sick = "Sick"
    case disgusted = "Disgusted"
    case surprised = "Surprised"
    case bored = "Bored"
    case confused = "Confused"
    
    var imageName: String {
        switch self {
        case .angry: return "image"
        case .happy: return "image"
        case .sad: return "image"
        case .tired: return "image"
        case .sick: return "image"
        case .disgusted: return "image"
        case .surprised: return "image"
        case .bored: return "image"
        case .confused: return "image"
        }
    }
}
