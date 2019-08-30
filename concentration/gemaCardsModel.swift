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
    var indexFirstFlippedCardd: Int? {
        get {
            var foundIndex: Int?
            for index in cardArray.indices {
                if cardArray[index].isFlipped == true {
                    if foundIndex == nil {
                        foundIndex = index
                    } else {
                        return nil
                    }
                }
               
            }
            return foundIndex
        }
        set {
            for index in cardArray.indices {
                cardArray[index].isFlipped = (index == newValue)
            }
        }
    }
    
    func chooseCard(at index: Int) {
        if !cardArray[index].isMatched {

            if let indexMatch = indexFirstFlippedCardd, indexMatch != index {
                
                if cardArray[index].indexNbr == cardArray[indexMatch].indexNbr {
                    cardArray[index].isMatched = true
                    cardArray[indexMatch].isMatched = true
                }
                cardArray[index].isFlipped = true
                
            } else {
                indexFirstFlippedCardd = index
            }
        }
    }
    
    init (nbrOfCards: Int) {
        for identifier in 0..<nbrOfCards {
            let newCard = Card(identifier)
            cardArray += [newCard, newCard]
        }
        for card in cardArray {
            print(card.indexNbr)
        }
        print ("lets random")
        for identifier in 0..<(nbrOfCards * 2) {
            let randomIndex = Int.random(in: 0..<(nbrOfCards * 2))
            let box = cardArray[identifier]
            cardArray[identifier] = cardArray[randomIndex]
            cardArray[randomIndex] = box
        }
        for card in cardArray {
            print(card.indexNbr)
        }
    }
    
    
}
