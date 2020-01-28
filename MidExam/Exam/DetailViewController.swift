//
//  DetailViewController.swift
//  Exam
//
//  Created by grade on 29.11.19.
//  Copyright © 2019 Julieta Ignatova, 81748. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var myLbl: UILabel!
    @IBOutlet weak var myImg: UIImageView!
    @IBOutlet weak var phoneNum: UILabel!
    
    var imageData : UIImage?
    var nameData : String?
    var phone : PhoneNumber?

    override func viewDidLoad() {
        super.viewDidLoad()

        myLbl.text = nameData
        myImg.image = imageData
        
       
        if let num = phone?.number, let pref = phone?.prefix {
            phoneNum.text = pref + " " + num
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
