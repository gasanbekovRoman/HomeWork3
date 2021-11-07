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
   
   
    @IBAction func unwindSegueToMainScreen(segue : UIStoryboardSegue){
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? WelkomeViewController else{
            return
        }
       dvc.login = loginTextField.text
    }

    
    func showAlert(_ title : String, _ message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let actionOk = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(actionOk)
        
        self.present(alert, animated: true, completion: nil)
    }
   
    @IBAction func showAlertLogin(_ sender: Any) {
        showAlert("Подсказка", "Nikita")
    }
    
    
    
    @IBAction func showAlertPassword(_ sender: Any) {
        showAlert("Подсказка", "Zharinov")
    }
    
    
    @IBAction func loginTan(_ sender: Any) {
        if loginTextField.text != "Nikita" {
            showAlert("Ошибка", "Неверный логин или пароль")
            loginTextField.text = ""
            passwordTextfield.text = ""
            
        }
        else if passwordTextfield.text != "Zharinov" {
          showAlert("Ошибка", "Неверный пароль")
            passwordTextfield.text = ""
            
        }else{
            return
        }
    }
    
  
    
    
}
