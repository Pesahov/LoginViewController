//
//  AboutMeViewController.swift
//  LoginViewController
//
//  Created by Shilol Pesahov on 21/12/2021.
//

import UIKit

class AboutMeViewController: UIViewController {

   
    var user: User?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoVC = segue.destination as? InfoViewController else { return }
        infoVC.user = user
    }

}
