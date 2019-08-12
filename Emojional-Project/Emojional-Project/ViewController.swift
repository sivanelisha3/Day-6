//
//  ViewController.swift
//  Emojional-Project
//
//  Created by Sivan on 8/12/19.
//  Copyright © 2019 Sivan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let emojis = ["😔":"discouraged", "😡":"frustrated"]
    
    let customMessages = [
        "discouraged": ["coding is hard! Keep trying and you'll get it", "Believe in yourself! You got this","It's okay to get discouraged sometimes, but dont let it get in the way of achieving your goals!"],
        "frustrated": ["Don't be afraid to ask for help!", "Take a deep breath, take a break, and come back to the code later.", "You're doing great! Keep trying and you'll get it!"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMessage(sender: UIButton){
        
        if let selectedEmotion = sender.titleLabel?.text {
        
        let titleText = selectedEmotion
        let messageText = emojis["\(selectedEmotion)"]!
        
        let emojiMessage = customMessages[emojis[selectedEmotion]!]?[0]
        
        let alertController = UIAlertController(title: "\(titleText)", message: "\(messageText)", preferredStyle: UIAlertController.Style.alert)
        
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            
            present(alertController, animated: true, completion: nil)
        }
        }

}



