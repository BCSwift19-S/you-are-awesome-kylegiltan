//
//  ViewController.swift
//  Week 2
//
//  Created by Kyle Gil Tan on 9/2/19.
//  Copyright © 2019 Kyle Gil Tan. All rights reserved.
//

//test test week 3 test test

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var awesomeImage: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    var index = -1
    var imageIndex = -1
    let numberOfImages = 10
    
    //code below first executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        print("The view loaded")
    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
        
//        let message1 = "You are awesome!"
//        let message2 = "You are great!"
//        let message3 = "You are amazing!"
//
//        if messageLabel.text == message1{
//            messageLabel.text = message2
//        }
//        else if messageLabel.text == message2{
//            messageLabel.text = message3
//        }
//        else{
//            messageLabel.text = message1
//        }
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
        
        //var newIndex = -1
        var newIndex: Int
        
        repeat{
            newIndex = Int.random(in: 0..<messages.count)
        }while index==newIndex

        index = newIndex
        messageLabel.text = messages[index]
        
        repeat{
            newIndex  = Int.random(in: 0..<numberOfImages)
        } while imageIndex == newIndex
        
        imageIndex = newIndex
        awesomeImage.image = UIImage(named: "image\(imageIndex)") 
        
//        messageLabel.text=messages[index]
//        if index == messages.count-1{
//            index = 0
//        }
//        else{
//        index+=1
//        }
    }

}

