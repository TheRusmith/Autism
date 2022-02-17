//
//  SpeechService.swift
//  Autism
//
//  Created by Francesco Viola on 17/02/22.
//

import Foundation
import AVFoundation
class SpeechService {
    private let synthesizer = AVSpeechSynthesizer()
    func say (_ phrase: String) {
        let utterance = AVSpeechUtterance (string: phrase)
        synthesizer.speak(utterance)
        //synthesizer has other functions
    }
}
