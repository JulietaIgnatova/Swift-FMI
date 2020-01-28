//
//  DetailViewController.swift
//  OscarsURLSession
//
//  Created by Julieta Ignatova on 12/5/19.
//  Copyright © 2019 Julieta Ignatova. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!


    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = detailDescriptionLabel {
                label.text = detail.movie.storyline
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    var detailItem: Nomination? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

