//
//  cardModel.swift
//  concentration
//
//  Created by Asafoetida Estella on 23/08/2019.
//  Copyright © 2019 Asafoetida Estella. All rights reserved.
//

import Foundation

struct Card
{
    var isFlipped = false
    var isMatched = false
    var indexNbr: Int
    
    init (_ indexNbr: Int) {
        self.indexNbr = indexNbr
    }
}
