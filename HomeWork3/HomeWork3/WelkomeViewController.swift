//
//  WelkomeViewController.swift
//  HomeWork3
//
//  Created by RomanGasanbekov  on 26.10.2021.
//

import UIKit

class WelkomeViewController: UIViewController {

    var login : String? 
    @IBOutlet weak var welkomeLabel: UILabel!
    
    override func viewDidLoad() {
        
        guard let login = self.login  else {
            return
        }

        welkomeLabel.text = "Hello \(String(describing: login))"
    }

    @IBAction func logOutTap(_ sender: Any) {
    }
    
  

}
