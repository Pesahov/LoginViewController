//
//  InfoViewController.swift
//  LoginViewController
//
//  Created by Shilol Pesahov on 21/12/2021.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var personImage: UIImageView!
    @IBOutlet weak var personInfoLabel: UILabel!
    
    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let user = user {
            personImage.image = user.person.image
            personInfoLabel.text = user.person.aboutMe
        }
     
    }
    // Скругление углов для картинки
    override func viewDidLayoutSubviews() {
        personImage.layer.cornerRadius  = personImage.bounds.height / 2
    }
}
