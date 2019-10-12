//
//  ThemeModel.swift
//  concentration
//
//  Created by Maria Ugorets on 12/10/2019.
//  Copyright © 2019 Asafoetida Estella. All rights reserved.
//

import Foundation
import UIKit

struct Theme {
    enum Theme {
        case one
        case two
    }
    
    func getTheTheme(by theme: Theme) -> (String, UIColor, UIColor)
    {
        switch theme {
        case .one:
            return ("😻🍑🏝🎈👙👗👑👠", #colorLiteral(red: 1, green: 0.5401149988, blue: 0.8455886245, alpha: 1), #colorLiteral(red: 0.4508578777, green: 0.9882974029, blue: 0.8376303315, alpha: 1))
        case .two:
            return ("🐱🦊🐻🐼🙉🐨🐶🐰", #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        }
    }
}
