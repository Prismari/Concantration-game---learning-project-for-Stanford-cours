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
                
                if cardArray[index] == cardArray[indexMatch] {
                    cardArray[index].isMatched = true
                    cardArray[indexMatch].isMatched = true
                }
                cardArray[index].isFlipped = true
                
            } else {
                indexFirstFlippedCardd = index
            }
        }
        
    }
    
    func checkAllCardsAreMatvhed() -> Bool {
        var isNotMatched:Bool = true
        for index in cardArray.indices
        {
            if !cardArray[index].isMatched
            {
                isNotMatched = false
                break
            }
        }
        return isNotMatched
    }
    
    init (nbrOfCards: Int) {
        for identifier in 0..<nbrOfCards {
            let newCard = Card(identifier)
            cardArray += [newCard, newCard]
        }
//        print ("lets random")
//        for identifier in 0..<(nbrOfCards * 2) {
//            let randomIndex = Int.random(in: 0..<(nbrOfCards * 2))
//            let box = cardArray[identifier]
//            cardArray[identifier] = cardArray[randomIndex]
//            cardArray[randomIndex] = box
//        }
    }
    
    
}
