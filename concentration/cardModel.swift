//
//  cardModel.swift
//  concentration
//
//  Created by Asafoetida Estella on 23/08/2019.
//  Copyright © 2019 Asafoetida Estella. All rights reserved.
//

import Foundation

struct Card: Hashable
{
    var hashValue: Int { return indexNbr }
    
    static func == (lhs: Card, rhs: Card) -> Bool {
        return lhs.indexNbr == rhs.indexNbr
    }
    
    var isFlipped = false
    var isMatched = false
    private var indexNbr: Int
    
    init (_ indexNbr: Int) {
        self.indexNbr = indexNbr
    }
}
