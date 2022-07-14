//
//  ViewController.swift
//  XylophoneApp
//
//  Created by Andrey on 7/14/22.
//

import UIKit
import AVFoundation



class ViewController: UIViewController {

    var player: AVAudioPlayer!
    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        let pressedKey = sender.titleLabel?.text ?? "C"
        
        sender.alpha = 0.5
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1
        }
        
        func playSound() {
            let url = Bundle.main.url(forResource: pressedKey, withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
            
        }
        playSound()
    }
}

