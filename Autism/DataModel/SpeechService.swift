//
//  SpeechService.swift
//  Autism
//
//  Created by Francesco Viola on 17/02/22.
//

import Foundation
import AVFoundation
class SpeechService {
    var volume : Float = 0.8
    var language : String = "it-IT"
    //mute put volume = 0 
    private let synthesizer = AVSpeechSynthesizer()
    func say (_ phrase: String) {
        let utterance = AVSpeechUtterance (string: phrase)
        utterance.volume = volume
        utterance.voice = AVSpeechSynthesisVoice(language: language)
        synthesizer.speak(utterance)
        
        //synthesizer has other variables you can change in settings
        
    }
}
