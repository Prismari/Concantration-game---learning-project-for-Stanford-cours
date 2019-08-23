//
//  gemaCardsModel.swift
//  concentration
//
//  Created by Asafoetida Estella on 23/08/2019.
//  Copyright © 2019 Asafoetida Estella. All rights reserved.
//

import Foundation

class cardModel
{
    var cardArray = [Card]()
    
    init (nbrOfCards: Int) {
        for identifier in 0..<nbrOfCards {
            let newCard = Card(identifier)
            cardArray += [newCard, newCard]
        }
        for identifier in 0..<nbrOfCards {
            let box = cardArray[identifier]
            var randomIndex = Int(arc4random())
            while randomIndex > nbrOfCards {
                randomIndex = Int(arc4random())
            }
            cardArray[randomIndex] = cardArray[identifier]
            cardArray[randomIndex] = box
        }
    }
}
