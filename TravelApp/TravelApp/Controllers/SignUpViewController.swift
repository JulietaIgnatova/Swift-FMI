//
//  SignUpViewController.swift
//  TravelApp
//
//  Created by Julieta Ignatova on 11/23/19.
//  Copyright © 2019 Julieta Ignatova. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var btnFacebook: UIButton!
    
    @IBOutlet weak var txtFullName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnFacebook.designButton(borderWidth: 0, borderColor: UIColor.clear)
        txtFullName.addRightView(image: #imageLiteral(resourceName: "friend+human+man+member+person+profile+user+users+icon-1320168707291252637"))
        txtEmail.addRightView(image: #imageLiteral(resourceName: "kisspng-email-address-computer-icons-email-hosting-service-mail-icon-5afc99746f0e05.6505993315265037964549"))
        txtPassword.addRightView(image: #imageLiteral(resourceName: "66880"), isSecure: true)
    }
    


}
