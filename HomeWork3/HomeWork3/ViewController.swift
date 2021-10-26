//
//  ViewController.swift
//  HomeWork3
//
//  Created by Asya  on 26.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    
    @IBOutlet weak var passwordTextfield: UITextField!
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.destination is WelkomeViewController else{
            return
        }
    }
    
    
    
    @IBAction func loginTab(_ sender: Any) {
    }
    
    

    
    


}

