//
//  ThemeChoseViewController.swift
//  concentration
//
//  Created by Maria Ugorets on 12/10/2019.
//  Copyright © 2019 Asafoetida Estella. All rights reserved.
//

import UIKit

class ThemeChoseViewController: UIViewController {

    @IBOutlet var themeButtons: [UIButton]!
    
    let themeForChosen = Theme()
    
    
    @IBAction func thouchChosenTheme(_ sender: UIButton) {
        if let themeNumber = themeButtons.index(of: sender) {
            print(themeNumber)
            let mvc = ViewController()
            mvc.themeNumber = themeNumber
            print(mvc.themeNumber)
        }
        else{
            print ("wtf?")
        }
            
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    
    
}
