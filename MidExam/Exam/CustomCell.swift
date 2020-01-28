//
//  CustomCell.swift
//  Exam
//
//  Created by grade on 29.11.19.
//  Copyright © 2019 Julieta Ignatova, 81748. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var cellLbl: UILabel!
    @IBOutlet weak var cellImg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
