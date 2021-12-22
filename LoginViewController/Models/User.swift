//
//  User.swift
//  LoginViewController
//
//  Created by Shilol Pesahov on 19/12/2021.
//

import UIKit

struct User {
    
    let userName: String
    let password: String
    let person: Person
    
    static func getUser() -> User{
        User(userName: "Shilol",
             password: "Pesahov",
             person: Person(image: UIImage(named: "Image") ?? UIImage(),
                            aboutMe: "I work in an employment agency, in accounting, as an economist by education. I work with people, which is very annoying. I want to retrain as an iOS developer, do an interesting job", ages: 34))
    }
    
}


struct Person {

    let image: UIImage
    let aboutMe: String
    let ages: Int
}
