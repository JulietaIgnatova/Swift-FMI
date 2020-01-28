//
//  ViewController.swift
//  AnimationProject
//
//  Created by Julieta Ignatova on 12/2/19.
//  Copyright © 2019 Julieta Ignatova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func executeTransition(_ sender: Any) {
        guard let destinationVC = storyboard?.instantiateViewController(withIdentifier: "ViewControllerTwo") as? ViewControllerTwo else {
            return
        }
        present(destinationVC, animated: true, completion: nil)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
}

