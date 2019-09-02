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
        if messageLabel.text == "You are awesome!"{
            messageLabel.text = "You are great!"
        }
        else if messageLabel.text == "You are great!"{
            messageLabel.text = "You are amazing!"
        }
        else{
            messageLabel.text = "You are awesome!"
        }
        
    }

}

