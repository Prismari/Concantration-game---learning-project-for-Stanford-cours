//
//  ViewController.swift
//  concentration
//
//  Created by Asafoetida Estella on 23/08/2019.
//  Copyright © 2019 Asafoetida Estella. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var game: cardModel = cardModel(nbrOfCards: 8)
    var imagesArray = ["😻", "🍑", "🏝", "🎈"]
    
    @IBOutlet var cardButtons: [UIButton]!

    @IBAction func touchCard(_ sender: UIButton) {
        if let CardNumber = cardButtons.index(of: sender) {
            flipCard(withEmoji: imagesArray[CardNumber], on: sender)
        }
        else {
            print ("error")
        }
    }
    
    func flipCard (withEmoji emoji: String, on button: UIButton){
        if button.currentTitle == emoji {
            button.setTitle(" ", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5409764051, blue: 0.8473142982, alpha: 1)
        }
        else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 0, green: 0.7245563865, blue: 0.7277783751, alpha: 1)
        }
    }
}
