//
//  DetailViewController.swift
//  AnimationProject
//
//  Created by Julieta Ignatova on 12/4/19.
//  Copyright © 2019 Julieta Ignatova. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    var imageData : UIImage?
    var nameData : String?

    override func viewDidLoad() {
        super.viewDidLoad()
        lbl.text = nameData
        img.image = imageData
    }
}
