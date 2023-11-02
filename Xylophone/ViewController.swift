//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(soundName: sender.currentTitle!)
        print (sender.currentTitle!)
        
        UIView.animate(withDuration: 0.2) {
                sender.alpha = 0.5 // Reduces the opacity of the button to half
            }
            // Your button action here
            UIView.animate(withDuration: 0.2) {
                sender.alpha = 1.0 // Brings sender's opacity back up to fully opaque
            }
    }
    
    func playSound(soundName: String) {
            let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
                    
        }

}

