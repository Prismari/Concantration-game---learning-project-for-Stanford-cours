//
//  ViewController.swift
//  concentration
//
//  Created by Asafoetida Estella on 23/08/2019.
//  Copyright © 2019 Asafoetida Estella. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    lazy var game: cardModel = cardModel(nbrOfCards: nbrOfCards)
    
    var nbrOfCards: Int {
        return (cardButtons.count + 1) / 2
    }
    
    private(set) var flipCardCount = 0
    {
        didSet {
            let attributes: [NSAttributedString.Key:Any] = [
                .strokeWidth : 5.0
                .strokeColor : col
            ]
            flipCardLabel.text = "flipped: \(flipCardCount)"
            
        }
        
    }
    
    @IBOutlet weak var flipCardLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCardCount += 1
        if let CardNumber = cardButtons.index(of: sender) {
            game.chooseCard(at: CardNumber)
            updateViewFromModel()
        }
        else {
            print ("error")
        }
    }
    
    func updateViewFromModel () {
        for index in cardButtons.indices {
            let currentButton = cardButtons[index]
            let currentCard = game.cardArray[index]
            
            if currentCard.isFlipped == true {
                currentButton.setTitle(emoji(for: currentCard), for: UIControlState.normal)
                currentButton.backgroundColor = #colorLiteral(red: 0, green: 0.7245563865, blue: 0.7277783751, alpha: 1)
            } else {
                currentButton.setTitle(" ", for: UIControlState.normal)
                currentButton.backgroundColor = currentCard.isMatched ? #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0) : #colorLiteral(red: 1, green: 0.5401149988, blue: 0.8455886245, alpha: 1)
            }
        }
    }
    
   // var imagesArray = ["😻", "🍑", "🏝", "🎈", "👙", "👗", "👑", "👠"]
    var imagesArray = "😻🍑🏝🎈👙👗👑👠"

    var emoji = [Card:String]()
    
    func emoji(for card: Card) -> String {
        if emoji[card] == nil, imagesArray.count > 0 {
            let randomStringIndex = imagesArray.index(imagesArray.startIndex, offsetBy: imagesArray.count.arc4andom)
            emoji[card] = String(imagesArray.remove(at: randomStringIndex))
        }
        if emoji[card] != nil { // can also write return emoji[card.indexNbr] ?? "?"
            return emoji[card]!
        } else {
            return "?"
        }
    }
}

extension Int {
    var arc4andom: Int {
        if self > 0 {
            return Int(arc4random_uniform(UInt32(self)))
        } else if self < 0 {
            return -Int(arc4random_uniform(UInt32(abs(self))))
        } else {
            return 0
        }
    }
}


//TODO : add "private" to classes and vars - Lection 3 35.00
