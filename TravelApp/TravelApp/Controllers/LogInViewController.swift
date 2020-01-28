//
//  LogInViewController.swift
//  TravelApp
//
//  Created by Julieta Ignatova on 11/23/19.
//  Copyright © 2019 Julieta Ignatova. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        txtEmail.addRightView(image: #imageLiteral(resourceName: "friend+human+man+member+person+profile+user+users+icon-1320168707291252637"))
        txtPassword.addRightView(image: #imageLiteral(resourceName: "66880"), isSecure: true)
       
    }
    
    @IBAction func onClickSignIn(_ sender: Any) {
        //UserDefaults.standard.set("logedIn", forKey: "accessToken")
        //changeRoot()
    }
    
   

}
