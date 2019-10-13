//
//  ViewController.swift
//  concentration
//
//  Created by Asafoetida Estella on 23/08/2019.
//  Copyright © 2019 Asafoetida Estella. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    //MARK: —  Start the Game
    
    var themeNumber = 0
    
    lazy var game: cardModel = cardModel(nbrOfCards: nbrOfCards)
    lazy var themeForGame = Theme(by: themeNumber)

    
    var nbrOfCards: Int {
        return (cardButtons.count + 1) / 2
    }
    
    private(set) var flipCardCount = 0
    {
        didSet {
            updateFlipCountLabel()
        }
        
    }
    
    private func startNewGame() {
        
        game = cardModel(nbrOfCards: nbrOfCards)
        updateViewFromModel()
        flipCardCount = 0
        updateFlipCountLabel()
    }
    
    //MARK: — Flip counter handling
    
    private func updateFlipCountLabel() {
        let attributes: [NSAttributedString.Key:Any]
            = [
            .strokeWidth : 4.0,
            .strokeColor : themeForGame.colorCards
            
        ]
        let attributedString = NSAttributedString(string: "flipped: \(flipCardCount)", attributes: attributes)
        
        flipCardLabel.attributedText = attributedString
        
    }
    
    @IBOutlet weak var flipCardLabel: UILabel! {
        didSet{
            updateFlipCountLabel()
        }
    }
    
    //MARK: —  Finish and restart the game
    
    func showFinishPopUp() {
        startNewGame()
        let popUpVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "sbPopUpID") as! FinishPopUpViewController
        
        self.addChildViewController(popUpVC)
        popUpVC.view.frame = self.view.frame
        self.view.addSubview(popUpVC.view)
        
        popUpVC.didMove(toParentViewController: self)
    }
    
    //MARK: —  Show current view
    
    
    func updateViewFromModel () {
        self.view.backgroundColor = themeForGame.colorBackground
        for index in cardButtons.indices {
            let currentButton = cardButtons[index]
            let currentCard = game.cardArray[index]
            
            if currentCard.isFlipped == true {
                currentButton.setTitle(emoji(for: currentCard), for: UIControlState.normal)
                currentButton.backgroundColor = themeForGame.colorBackground
            } else {
                currentButton.setTitle(" ", for: UIControlState.normal)
                currentButton.backgroundColor = currentCard.isMatched ? #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0) : themeForGame.colorCards
            }
        }
    }
    
    
    //MARK: —  Cards handling
    
    @IBOutlet var cardButtons: [UIButton]!
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCardCount += 1
        if let CardNumber = cardButtons.index(of: sender) {
            game.chooseCard(at: CardNumber)
            if game.checkAllCardsAreMatvhed()
            {
                showFinishPopUp()
            }
            updateViewFromModel()
        }
        else {
            print ("error")
        }
        print (themeNumber)
    }

    //MARK: —  Emoji handling
        

        var emoji = [Card:String]()
        
        func emoji(for card: Card) -> String {
            if emoji[card] == nil, themeForGame.emoji.count > 0 {
                let randomStringIndex = themeForGame.emoji.index(themeForGame.emoji.startIndex, offsetBy: themeForGame.emoji.count.arc4andom)
                emoji[card] = String(themeForGame.emoji.remove(at: randomStringIndex))
            }
            if emoji[card] != nil { // can also write return emoji[card.indexNbr] ?? "?"
                return emoji[card]!
            } else {
                return "?"
            }
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViewFromModel()
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
