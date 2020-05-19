//
//  ViewController.swift
//  Xylophone
//
//  Created by Saadiq rauf khan on 23/04/20.
//  Copyright © 2020 Saadiq rauf khan. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        //print(sender.backgroundColor)
        print("start")
        playSound(soundName: sender.currentTitle!)
        
        //Reduces the sender's (the button that got pressed) opacity to half.
         sender.alpha = 0.5

         //Code should execute after 0.2 second delay.
         DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
             //Brings sender's opacity back up to fully opaque.
             sender.alpha = 1.0
             print("end")
         }
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}

