//
//  ThemeModel.swift
//  concentration
//
//  Created by Maria Ugorets on 12/10/2019.
//  Copyright © 2019 Asafoetida Estella. All rights reserved.
//

import Foundation
import UIKit

class Theme {
    enum Theme: Int {
        case party = 0
        case animals
        case space
        case travel
        case sport
        case office
    }
    var emoji = "😻🍑🏝🎈👙👗👑👠"
    var colorCards = #colorLiteral(red: 1, green: 0.5401149988, blue: 0.8455886245, alpha: 1)
    var colorBackground = #colorLiteral(red: 0.4508578777, green: 0.9882974029, blue: 0.8376303315, alpha: 1)
    init (by theme: Int)
        {
            let themeGame = Theme(rawValue: theme)
            switch themeGame {
            case .party:
                emoji = "😻🍑🏝🎈👙👗👑👠"
                colorCards = #colorLiteral(red: 1, green: 0.5401149988, blue: 0.8455886245, alpha: 1)
                colorBackground = #colorLiteral(red: 0.4508578777, green: 0.9882974029, blue: 0.8376303315, alpha: 1)
            case .animals:
                emoji = "🐱🦊🐻🐼🙉🐨🐶🐰"
                colorCards = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
                colorBackground = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
            case .space:
                emoji = "🌎🌙✨💫🌚🚀🛸🛰"
                colorCards = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
                colorBackground = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
            case .travel:
                emoji = "✈️🏖🏔🏄🏻‍♂️🚴🏻‍♀️🏛📸🛥"
                colorCards = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
                colorBackground = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
            case.sport:
                emoji = "⚽️🏓🥊🏹⛸🛹🏆⛳️"
                colorCards = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
                colorBackground = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
            case.office:
                emoji = "👔💅🏻👩🏻‍💻👨🏼‍💼🏢📈🗂💼"
                colorCards = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
                colorBackground = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
                
            case .none:
                break
            }
        }
    }

