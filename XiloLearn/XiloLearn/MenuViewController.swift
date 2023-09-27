//
//  MenuViewController.swift
//  XiloLearn
//
//  Created by Gustavo Zahorcsak Matias Silvano on 25/09/23.
//

// Segue String: "toGameView"

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        performSegue(withIdentifier: "toGameView", sender: self)
    }
}
