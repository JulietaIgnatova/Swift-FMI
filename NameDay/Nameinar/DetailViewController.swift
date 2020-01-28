//
//  DetailViewController.swift
//  Nameinar
//
//  Created by Julieta Ignatova on 11/27/19.
//  Copyright © 2019 Swift FMI. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var namesLbl: UILabel!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var datelbl: UILabel!
    var nameDay: NameDay?
    override func viewDidLoad() {
        super.viewDidLoad()
        namesLbl.text = nameDay?.names.joined(separator: ", ")
        titleLbl.text = nameDay?.title
        datelbl.text = nameDay?.date
        
        // Do any additional setup after loading the view.
    }
}
