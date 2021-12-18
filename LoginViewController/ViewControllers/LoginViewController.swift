//
//  ViewController.swift
//  LoginViewController
//
//  Created by Shilol Pesahov on 14/12/2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    let validUserName = "Shilol"
    let validPassword = "Pesahov"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.validUserName = validUserName
    }
    
    @IBAction func forgotUserName(_ sender: Any) {
        
        let allertController = UIAlertController(title: "Forgot name?", message: "Your name is Shilol.", preferredStyle: .alert)
            let action = UIAlertAction(title: "Understand", style: .default) { action in
            }
            allertController.addAction(action)
            self.present(allertController, animated: true, completion: nil)
        
    }
    
    @IBAction func forgotPassword(_ sender: Any) {
        
        let allertController = UIAlertController(title: "Forgot password?", message: "Your password is Pesahov.", preferredStyle: .alert)
            let action = UIAlertAction(title: "Understand", style: .default) { action in
            }
            allertController.addAction(action)
            self.present(allertController, animated: true, completion: nil)
        
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue){
        
        username.text = ""
        password.text = ""
    }

}

extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}
