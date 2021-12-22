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
    
    
    let user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // с помощью delegate сами поля логин и пароль могут вызывать функции внутри моего VC
        username.delegate = self
        password.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = viewController as? UINavigationController {
                let aboutUserVC = navigationVC.topViewController as! AboutMeViewController
                aboutUserVC.user = user
            }
        }
    }
    
    
    @IBAction func loginPressed() {
        guard username.text == user.userName, password.text == user.password else {
            username.text?.removeAll()
            password.text?.removeAll()
            incorrectLogAlert()
            return
        }
        performSegue(withIdentifier: "goToWelcome", sender: nil)
    }
    
    
    @IBAction func forgotUserName(_ sender: Any) {
        showAlert(title: "Forgot name?", message: "Your name is Shilol.")
        
    }
    
    @IBAction func forgotPassword(_ sender: Any) {
        showAlert(title: "Forgot password?", message: "Your password is Pesahov.")
        
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue){
        
        username.text = ""
        password.text = ""
    }
    
}
// Функция которя вызывает любое сообщение
extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    private func incorrectLogAlert() {
        let alert = UIAlertController(title: "error", message: "Your username or password incorrect, please try again", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
}


//MARK: - UITextFieldDelegate
extension LoginViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField.tag == 0 {
            password.becomeFirstResponder()
        } else {
            loginPressed()
        }
        
        return true
    }
    
}
