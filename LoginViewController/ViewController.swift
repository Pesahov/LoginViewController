//
//  ViewController.swift
//  LoginViewController
//
//  Created by Shilol Pesahov on 14/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

let validUserName = "Shilol"
let validPassword = "User"

override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let text = username.text!
        let pass = password.text!
        if segue.identifier == "goToWelcome" && text == validUserName && pass == validPassword {
            let _ = segue.destination as! WelcomeViewController
        
        } else {
            let allertController = UIAlertController(title: "Rejected", message: "Wrong user name or password", preferredStyle: .alert)
                let action = UIAlertAction(title: "Cancel", style: .cancel) { action in
                }
                allertController.addAction(action)
                self.present(allertController, animated: true, completion: nil)
            
        }
    }
    
    @IBAction func forgotUserName(_ sender: Any) {
        
        let allertController = UIAlertController(title: "Forgot name?", message: "Your name is Shilol.", preferredStyle: .alert)
            let action = UIAlertAction(title: "Understand", style: .default) { action in
            }
            allertController.addAction(action)
            self.present(allertController, animated: true, completion: nil)
        
    }
    
    @IBAction func forgotPassword(_ sender: Any) {
        
        let allertController = UIAlertController(title: "Forgot password?", message: "Your password is User.", preferredStyle: .alert)
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




