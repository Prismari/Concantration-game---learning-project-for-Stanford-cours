//
//  FinishPopUpViewController.swift
//  concentration
//
//  Created by Maria Ugorets on 12/10/2019.
//  Copyright © 2019 Asafoetida Estella. All rights reserved.
//

import UIKit

class FinishPopUpViewController: UIViewController {

    @IBAction func removePopUp(_ sender: Any) {
        self.view.removeFromSuperview()
    }
    @IBOutlet weak var messegeView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        messegeView.layer.cornerRadius = 24
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
