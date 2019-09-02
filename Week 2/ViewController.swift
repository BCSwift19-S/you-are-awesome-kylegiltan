//
//  ViewController.swift
//  Week 2
//
//  Created by Kyle Gil Tan on 9/2/19.
//  Copyright © 2019 Kyle Gil Tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    //code below first executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        print("The view loaded")
    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
        
        let message1 = "You are awesome!"
        let message2 = "You are great!"
        let message3 = "You are amazing!"
        
        if messageLabel.text == message1{
            messageLabel.text = message2
        }
        else if messageLabel.text == message2{
            messageLabel.text = message3
        }
        else{
            messageLabel.text = message1
        }
        
    }

}

