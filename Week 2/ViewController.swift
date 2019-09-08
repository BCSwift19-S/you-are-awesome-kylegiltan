//
//  ViewController.swift
//  Week 2
//
//  Created by Kyle Gil Tan on 9/2/19.
//  Copyright © 2019 Kyle Gil Tan. All rights reserved.
//

//test test week 3 test test

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var awesomeImage: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var soundSwitch: UISwitch!
    
    var awesomePlayer = AVAudioPlayer()
    var index = -1
    var imageIndex = -1
    var soundIndex = -1
    let numberOfImages = 10
    let numberOfSounds = 6
    
    //code below first executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        print("The view loaded")
    }
    
    func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int{
        var newIndex: Int
        repeat{
            newIndex = Int.random(in: 0..<maxValue)
        }while lastNumber==newIndex
        return newIndex
    }
    
    func playSound(soundName: String, audioPlayer: inout AVAudioPlayer){
        //can we load in sound name?
        if let sound = NSDataAsset(name: soundName){
            //check if sound.data is a sound file
            do{
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            }
            catch{
                print("ERROR: file \(soundName) didn't load.")
            }
        }
        else{
            //if reading in the NSDataAsset didn't work tell the developer
            print("ERROR: file \(soundName) didn't load.")
        }
    }
    @IBAction func soundSwitchPressed(_ sender: UISwitch) {
        if soundSwitch.isOn != true && soundIndex != -1{
                awesomePlayer.stop()
        }
    }
    
    @IBAction func showMessagePressed(_ sender: UIButton) {
        

        let messages = ["You are awesome!",
                        "You are great!",
                        "You are fantastic!",
                        "When the genius bar needs help, they call you",
                        "You brighten my day!",
                        "You da bomb!",
                        "Hey, fabulous!",
                        "You are tremendous!",
                        "You got the skills of Jony Ive!",
                        "I can't wait to download your app!"]
        
        //messageLabel.text = messages.randomElement()!
        
        
        //show a message
        index =  nonRepeatingRandom(lastNumber: index, maxValue: messages.count)
        messageLabel.text = messages[index]
        
        //show an image
        imageIndex = nonRepeatingRandom(lastNumber: imageIndex, maxValue: numberOfImages)
        awesomeImage.image = UIImage(named: "image\(imageIndex)") 

        //play a sound
        if soundSwitch.isOn {
            soundIndex = nonRepeatingRandom(lastNumber: soundIndex, maxValue: numberOfSounds)
            let soundName="sound\(soundIndex)"
            playSound(soundName: soundName, audioPlayer: &awesomePlayer)
        }
        else{
            
        }
        
    }

}

