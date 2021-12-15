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

let validUserName = "shilol"
let validPassword = "user"

override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let text = username.text!
        let pass = password.text!
        if segue.identifier == "goToWelcome" && text == validUserName && pass == validPassword {
            let newVC = segue.destination as! WelcomeViewController
        
        } else {
            let allertController = UIAlertController(title: "Access Denied", message: "Wrong user name or password", preferredStyle: .alert)
                let action = UIAlertAction(title: "Cancel", style: .cancel) { action in
                }
                allertController.addAction(action)
                self.present(allertController, animated: true, completion: nil)
            
        }
    }
    
    
    @IBAction func forgotUserName(_ sender: Any) {
    }
    
    
    @IBAction func forgotPassword(_ sender: Any) {
    }
    
}




