//
//  ViewController.swift
//  TravelApp
//
//  Created by Julieta Ignatova on 11/23/19.
//  Copyright © 2019 Julieta Ignatova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnSignIn: CustomButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnSignIn.designButton()
    }

    @IBAction func onClickSignUp(_ sender: Any) {
    }
    
    @IBAction func onClickSignIn(_ sender: Any) {
    }
}

