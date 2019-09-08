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
        
        var newIndex: Int
        
        //show a message
        repeat{
            newIndex = Int.random(in: 0..<messages.count)
        }while index==newIndex

        index = newIndex
        messageLabel.text = messages[index]
        
        //show an image
        repeat{
            newIndex  = Int.random(in: 0..<numberOfImages)
        } while imageIndex == newIndex
        
        imageIndex = newIndex
        awesomeImage.image = UIImage(named: "image\(imageIndex)") 

        //play a sound
        repeat{
            newIndex  = Int.random(in: 0..<numberOfSounds)
        } while soundIndex == newIndex
        soundIndex = newIndex
        var soundName="sound\(soundIndex)"
        //can we load in sound name?
        if let sound = NSDataAsset(name: soundName){
            //check if sound.data is a sound file
            do{
                try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
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

}

