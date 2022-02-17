//
//  Audio.swift
//  Autism
//
//  Created by Francesco Viola on 17/02/22.
//


import SwiftUI
import Foundation
import AVFoundation
import AVKit



class RecordVC: UIViewController , AVAudioRecorderDelegate, AVAudioPlayerDelegate {
    @IBOutlet var recordingTimeLabel: UILabel!
    @IBOutlet var record_btn_ref: UIButton!
    @IBOutlet var play_btn_ref: UIButton!
}


var audioRecorder: AVAudioRecorder!
var audioPlayer : AVAudioPlayer!
var meterTimer:Timer!
var isAudioRecordingGranted: Bool!
var isRecording = false
var isPlaying = false

/* OVERRIDE FUNCTION CHECK RECORD PERMISSION
override func viewDidLoad() {
    super.viewDidLoad()
    check_record_permission()
}
 
func check_record_permission()
{
    switch AVAudioSession.sharedInstance().recordPermission() {
    case AVAudioSessionRecordPermission.granted:
        isAudioRecordingGranted = true
        break
    case AVAudioSessionRecordPermission.denied:
        isAudioRecordingGranted = false
        break
    case AVAudioSessionRecordPermission.undetermined:
        AVAudioSession.sharedInstance().requestRecordPermission({ (allowed) in
                if allowed {
                    self.isAudioRecordingGranted = true
                } else {
                    self.isAudioRecordingGranted = false
                }
        })
        break
    default:
        break
    }
}
*/



//generate path where you want to save that recording as myRecording.m4a

func getDocumentsDirectory() -> URL
{
    let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
    let documentsDirectory = paths[0]
    return documentsDirectory
}

func getFileUrl() -> URL
{
    let filename = "myRecording.m4a"
    let filePath = getDocumentsDirectory().appendingPathComponent(filename)
return filePath
}

//setup the recorder
