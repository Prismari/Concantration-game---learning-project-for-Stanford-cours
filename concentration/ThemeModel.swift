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
                colorCards = #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1)
                colorBackground = #colorLiteral(red: 0, green: 0.5603182912, blue: 0, alpha: 1)
            case .space:
                emoji = "🌎🌙✨💫🌚🚀🛸🛰"
                colorCards = #colorLiteral(red: 0.9995340705, green: 0.988355577, blue: 0.4726552367, alpha: 1)
                colorBackground = #colorLiteral(red: 0.3236978054, green: 0.1063579395, blue: 0.574860394, alpha: 1)
            case .travel:
                emoji = "✈️🏖🏔🏄🏻‍♂️🚴🏻‍♀️🏛📸🛥"
                colorCards = #colorLiteral(red: 0.9995340705, green: 0.988355577, blue: 0.4726552367, alpha: 1)
                colorBackground = #colorLiteral(red: 0.370555222, green: 0.3705646992, blue: 0.3705595732, alpha: 1)
            case.sport:
                emoji = "⚽️🏓🥊🏹⛸🛹🏆⛳️"
                colorCards = #colorLiteral(red: 1, green: 0.3044164669, blue: 0.2167022984, alpha: 1)
                colorBackground = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            case.office:
                emoji = "👔💅🏻👩🏻‍💻👨🏼‍💼🏢📈🗂💼"
                colorCards = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
                colorBackground = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
                
            case .none:
                break
            }
        }
    }

