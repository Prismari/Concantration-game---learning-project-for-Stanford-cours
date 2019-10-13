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
    
        
    @IBOutlet weak var startGameButton: UIButton!
    
    var themeNumber: Int?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.destination is ViewController
        {
            let vc = segue.destination as? ViewController
            if themeNumber != nil {
                vc?.themeNumber = themeNumber!
                print(themeNumber)
            }
        }
    }

    @IBAction func thouchChosenTheme(_ sender: UIButton) {
        themeNumber = themeButtons.index(of: sender) ?? nil
        if themeNumber != nil {
            print(themeNumber)
        }
        else{
            print ("wtf?")
        }
        sender.backgroundColor = #colorLiteral(red: 0.7411332516, green: 0.8816084117, blue: 1, alpha: 1)
        startGameButton.setTitle("TAP TO START", for: .normal)
    }
    
    override func viewDidLoad() {
        startGameButton.setTitle("     ", for: .normal)
        super.viewDidLoad()
    }
    
}
